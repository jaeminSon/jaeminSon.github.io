---
title: (코드 탐색) vllm
parent: Code Review
---

**(코드 탐색) vllm** [(github)](https://github.com/vllm-project/vllm)

<img src="/data/vllm_code/entrypoints.png" width="800" />

<img src="/data/vllm_code/diagram.png" width="800" />

## Class hierarchy
<img src="/data/vllm_code/hierarchy.png" width="800" />

- VllmConfig class 가 공통 config 로 사용됨.
- 개별 모델의 constructor 를 Model 로 통일.
- EngineCoreProc: handshake_address (query 를 주고 받는데 사용), model_executor 변수 소유.
   - model_executor.execute_model 함수의 return 으로 new tokens 이 전달되며, 이는 내부에서 collective_rpc 에서 return 됨.
   - collective_rpc==gpu_worker (혹은 다른 worker) 의 execute_model 함수
- gpu_worker 의 execute_model 함수 안에서 gpu_model_runner (혹은 다른 model runner) 의 execute_model 함수가 호출됨.
- (gpu_model_runner 의 경우) gpu_model_runner 의 execute_model 함수 안에서 CUDAGraphWrapper 의 \_\_call\_\_ 함수가 호출됨.
   - gpu_model_runner 는 attention backend config 를 바탕으로 compiled model 을 가지고 있음.
- CUDAGraphWrapper 의 \_\_call\_\_ 함수 안에서 모델 (e.g. qwen) 의 forward 가 호출됨.
- 모델 (e.g. qwen) 의 forward 함수 안에서 PIECEWISEBackend class 의 \_\_call\_\_ 함수가 호출됨.
- PIECEWISEBackend class 의 \_\_call\_\_ 함수 안에서 torch._inductor.output_code.CompiledFxGraph 에서 실제 계산이 일어남.

## Huggingface 모델 로딩 방법
- config.json 에서 정보 취득.
- AutoTokenizer 로 tokenize.
- weight 는 AutoModel 이 아닌 vLLM 자체 코드 사용.

## CUDA graphs
- In vLLM V1, piecewise cudagraphs are captured between attention operation (i.e. the first graph before any attention operation, the last graph after all the attention operation)
- cudagraphs are captured and managed by the compiler backend, and replayed when the batch size has corresponding cudagraph captured

```
# graph capture 예V시
bool graphCreated=false;
cudaGraph_t graph;
cudaGraphExec_t instance;
for(int istep=0; istep<NSTEP; istep++){
  if(!graphCreated){
    cudaStreamBeginCapture(stream, cudaStreamCaptureModeGlobal);
    for(int ikrnl=0; ikrnl<NKERNEL; ikrnl++){
      shortKernel<<<blocks, threads, 0, stream>>>(out_d, in_d);
    }
    cudaStreamEndCapture(stream, &graph);
    cudaGraphInstantiate(&instance, graph, NULL, NULL, 0);
    graphCreated=true;
  }
  cudaGraphLaunch(instance, stream);
  cudaStreamSynchronize(stream);
}
```

<img src="/data/vllm_code/cudagraph.png" width="800" />

<img src="/data/vllm_code/batch_descriptor.png" width="800" />

## vLLM-torch.compile overview
- full graph is captured via TorchDynamo
- TorchInductor to compile each graph into a compiled artifact (vLLM custom Inductor passes may be used to further optimize the graph)
- compiled artifact is saved to vLLM's compile cache for future use

<img src="/data/vllm_code/torchcompile.png" width="800" />

## Paged Attention
- scalar_t: e.g. FP32, FP16
- HEAD_SIZE: # elements at one head
- BLOCK_SIZE: # tokens at one head
- NUM_THREADS: # threads in each gpu thread block
- VEC_SIZE: # elements for query & key
- V_VEC_SIZE: # elements for value
- THREAD_GROUP_SIZE: # threads that fetches 1 query token (or 1 key token) at a time
- x: # total elements processed by one thread group
- PARTITION_SIZE: # tensor parallel GPUs
- WARP_SIZE: 32 threads per warp (warp processes the calculation between 1 query token and key tokens of one entire block at a time)


```
# query pointer
const scalar_t* q_ptr = q + seq_idx * q_stride + head_idx * HEAD_SIZE;

# query vector
__shared__ Q_vec q_vecs[THREAD_GROUP_SIZE][NUM_VECS_PER_THREAD];

# key pointer
const scalar_t* k_ptr = k_cache + physical_block_number * kv_block_stride
                    + kv_head_idx * kv_head_stride
                    + physical_block_offset * x;

# key vector
K_vec k_vecs[NUM_VECS_PER_THREAD]

# key

# output
scalar_t* out_ptr = out + seq_idx * num_heads * max_num_partitions * HEAD_SIZE
                + head_idx * max_num_partitions * HEAD_SIZE
                + partition_idx * HEAD_SIZE;
```

<img src="/data/vllm_code/query.png" width="800" />

<img src="/data/vllm_code/key.png" width="800" />

<img src="/data/vllm_code/value.png" width="800" />

<img src="/data/vllm_code/value2.png" width="800" />

## Plugins
- Plugins: *user-registered code that vLLM executes (allows users to add custom features without modifying the vLLM codebase)*
    - plugins 종류: model, platform, pre/post-processing, logger
- IO Processor Plugins: *pass a custom input to vLLM that is converted into one or more model prompts and fed to the model encode method.*
- LoRA Resolver Plugins: *dynamically load LoRA adapters at runtime.*

## Prefix caching
- cache the kv-cache blocks of processed requests, and reuse these blocks when a new request comes in with the same prefix as previous requests.

## Hybrid KV Cache Manager
- Sliding window attention (sw) + full attention (full): gpt-oss, Gemma 2/3, Ministral, cohere, etc.
- Mamba + full: Bamba, Jamba, Minimax, etc.
- Local chunked attention + full: Llama4

## P2P NCLL Connector
- Prefill 수행하는 gpu -> decode 수행하는 gpu
- ZeroMQ (ZMQ): asynchronous messaging library
- NCCL: NVIDIA Collective Communications Library

## Dual Batch Overlap
- Data Parallel + Expert Parallel 인 경우 대상.
- 2 개의 CPU worker threads 가 ping-pong 하면서 계산-통신하면서 MoE layer 처리.

## Fused MoE Kernel
- FusedMoE layer 의 expert parallelism (EP) 를 구현하기 위한 all2all communication backends 가 여럿 존재함 (e.g. triton, flashinfer).
- Modular Kernel 도 지원.
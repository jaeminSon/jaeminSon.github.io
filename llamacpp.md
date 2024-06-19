---
layout: default
---

**[(코드 탐색) llama.cpp](https://github.com/ggerganov/llama.cpp)**

## Legacy quantization (linear quantization) [(PR)](https://github.com/ggerganov/llama.cpp/pull/1684)
- type-0 (Q4_0, Q5_0): scale only (weight = scale * quantized)
- type-1 (Q4_1, Q5_1): scale + bias (weight = scale * quantized + block minimum)
- superblock 은 block (=weight group) 들의 scale, bias 를 quantize. 

| Name    | bias | bit for weight | n_weights per block | bit for scale (per block) | bit for min (per block) | n_blocks per superblock | bit per weight| 
| :-------: | :-------: | :-------: | :-------: | :-------: | :-------: | :-------: |
| Q2_K  | O | 2 | 16 | 4 | 4 | 16 | 2.5625| 
| Q3_K  | X | 3 | 16 | 6 | 6 | 16 | 3.4375| 
| Q4_K  | O | 4 | 32 | 6 | 6 | 8 | 4.5| 
| Q5_K  | O | 5 | 32 | 6 | 6 | 8 | 5.5| 
| Q6_K  | X | 6 | 16 | 8 | 8 | 16 | 6.5625| 
| Q8_K  | X | 8 | 256 |  |  | | 

- Q4_k 의 경우 bit per weight 계산 방법
  - FP16 s_of_scales (16)
  - FP16 s_of_mins (16) 
  - 8 x 6 bit scales (48)
  - 8 x 6 bit biases (48)
  - 256 x 4 bit weights (1024)
  - (16 + 16 + 48 + 48 + 1024) / 256 = 4.5

## Quantization mixes [(PR)](https://github.com/ggerganov/llama.cpp/pull/1684)
- Q3_K_S, Q5_K_M 등
- 예시
  - Q3_K_S: Q3_K for all tensors
  - Q3_K_M: Q4_K for the attention.wv, attention.wo, and feed_forward.w2 tensors, else GGML_TYPE_Q3_K
  - Q3_K_L: Q5_K for the attention.wv, attention.wo, and feed_forward.w2 tensors, else GGML_TYPE_Q3_K

## Importance matrix [(PR)](https://github.com/ggerganov/llama.cpp/pull/4861)
- wiki.train.raw 과 같은 데이터를 가지고, 각 weight 의 중요도를 input column 의 squared sum 으로 approximate 하여 quantize 시 활용.

## I-Quantization [(PR)](https://github.com/ggerganov/llama.cpp/pull/4773)
- IQ2_XXS, IQ3_S 등
- [QuIP#](https://arxiv.org/pdf/2402.04396) 에서 sign flip, lattice 기법을 차용.

## GGUF 모델 변환
- HuggingFace checkpoint 를 GGUF 포맷으로 변환 필요 (convert-hf-to-gguf.py)
- gguf-py 폴더는 GGUF 포맷을 read/write 하기 위한 python 코드들이 들어있음.
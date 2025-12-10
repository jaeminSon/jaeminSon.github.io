---
title: (코드 탐색) llm-compressor
parent: Code Review
---

**(코드 탐색) llm-compressor** [(code)](https://github.com/vllm-project/llm-compressor/tree/main)

### Activation-quantization 과 Weight-quantization 을 별도의 기법
- weight-only quantization: weight 만 int4, int8, fp4, fp8 로 양자화.
- weight & activation quantization: weight 및 activation 을 양자화 하며, FP8, NVFP4 등이 자주 쓰임.
    - weights: static, per-channel quantization
    - activations: dynamic (computed at runtime), per-token quantization

### NVFP4
- weights 및 activations 을 저장하기 위한 용도.
- E2M1 형태: 1 sign bit, 2 exponent bits, and 1 mantissa bit.
- $(-1)^s * (1 + m * 0.5) * 2^{e - 1}$ 로 [-6,6] 을 표현
- calibration dataset 필요.

### MXFP4
- compute-only internal format (Blackwell tensor cores during matrix multiply).
- 1 sign bit, 3 mantissa bit.
- value = sign * m * $2^{blockexp}$

| m (3-bit) | Positive value | Notes                   |
| --------- | -------------- | ----------------------- |
| 000       | 1.0            | lowest normalized       |
| 001       | 1.25           |                         |
| 010       | 1.5            |                         |
| 011       | 2.0            |                         |
| 100       | 3.0            |                         |
| 101       | 4.0            |                         |
| 110       | 6.0            |                         |
| 111       | reserved       | sometimes used for zero |

### 동작 방식
- 핵심 quantization logic 은 **compressed_tensors** 페키지에 존재.
- Entroy point
   - oneshot: generate calibration dataloader -> apply recipe modifier -> post_process
   - modify_save_pretrained: 함수 실행시, 모델의 save_pretrained method 가 갈아끼워짐.

### 세부구현
- session 을 reset, initialize, finalize 하며 관리.
- lifecycle 의 calibration_epoch_start, calibration_epoch_end 등으로 event 생성.
- pipeline 안에서 inference 이후 각 subgraph 의 activation 은 cache 되어 quantize 시 활용됨.

### Misc
- Observer class: weights, activations 및 scale, zero_point 과 같은 quantization parameters 분석하는 utility class.
- GPTQ, AWQ, NVFP4 는 calibration 데이터 필요하며, 성능 저하 이슈로 주로 weight 만 quantize 한다고 함 (by gpt5).


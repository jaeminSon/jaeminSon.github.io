---
title: (코드 탐색) llm-compressor
parent: Code Review
---

**(코드 탐색) llm-compressor** [(code)](https://github.com/vllm-project/llm-compressor/tree/main)

### Activation-quantization 과 Weight-quantization 을 별도의 기법
- 2025년 기준, inference 는 BF16 혹은 FP16 사용함.
   - weight-only quantization: weight 만 int4, int8, fp4, fp8 로 양자화.
   - weight & activation quantization: weight 및 activation 을 양자화 하며, FP8, NVFP4 등이 자주 쓰임.

### 지원 되는 양자화 기법
- GPTQ (Generalized Post-Training Quantization)
- AWQ (Activation-aware Weight Quantization)
- Round-to-Nearest (RTN)
- FP8
   - weights: static, per-channel quantization
   - activations: dynamic (computed at runtime), per-token quantization


### MISC
- GPTQ 와 AWQ 는 calibration 데이터 필요하며, 성능 저하 이슈로 주로 weight 만 quantize 한다고 함 (by gpt5).

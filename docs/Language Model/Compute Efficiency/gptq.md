---
title: (논문 요약) GPTQ; ACCURATE POST-TRAINING QUANTIZATION FOR GENERATIVE PRE-TRAINED TRANSFORMERS
parent: Compute Efficiency
---

**(논문 요약) GPTQ: ACCURATE POST-TRAINING QUANTIZATION FOR GENERATIVE PRE-TRAINED TRANSFORMERS** [(paper)](https://arxiv.org/pdf/2210.17323)

## 핵심 내용
- Optimal Brain Quantization (OBQ): greedy quantization
   - greedy 하게 quantize 할 weight 를 고른뒤,
   - 발생하는 error 를 quantize 안된 weights 가 분담.
- OBQ 의 efficiency 를 높임.
   - block 단위로 quantize.
   - numerical stability 를 위하여 Hessian 을 Cholesky form 으로 변환하여 사용.


<img src="/data/papers/gptq/algorithm.png" width="800" />
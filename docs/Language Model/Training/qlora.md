---
title: (논문 요약) QLORA; Efficient Finetuning of Quantized LLMs
parent: Compute Efficiency
---

**(논문 요약) QLORA: Efficient Finetuning of Quantized LLMs** [(Paper)](https://arxiv.org/pdf/2305.14314)

## 핵심 내용
- base model weights: **4**-bit
- lora: **16**-bit
- optimizer: **32**-bit
- double-quanitzation: quantized constants 들을 묶어서 다시 quantize

<img src="/data/papers/qlora/concept.png" width="400" />  

<img src="/data/papers/qlora/eq1.png" width="700" />  
<img src="/data/papers/qlora/eq2.png" width="800" />  

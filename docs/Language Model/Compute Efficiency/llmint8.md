---
title: (논문 요약) LLM.int8(); 8-bit Matrix Multiplication for Transformers at Scale
parent: Compute Efficiency
---

**(논문 요약) LLM.int8(): 8-bit Matrix Multiplication for Transformers at Scale** [(Paper)](https://arxiv.org/pdf/2208.07339)

## 핵심 내용
- motivation: 8 bit 로 단순 양자화 했을때 성능 하락. outlier feature dimension 이 존재하기 때문.    
<img src="/data/papers/llmint8/motivation.png" width="400" />

- method: outlier feature dimension (magnitude up to x20 larger) 을 분리.  
  - <img src="/data/papers/llmint8/method.png" width="800" />  
  - 16-bit matrix multiplication for the outlier feature dimensions
  - 8-bit matrix multiplication for the other 99.9% of the dimensions
  - outlier feature dimension: all dimensions, element of which have a magnitude larger than the threshold 6.0
  - vectorwise quantization: <img src="/data/papers/llmint8/vectorwise.png" width="500" />   $X_{f16}W_{f16}\in\mathbb{R}^{s\times o}, c_{X_{f16}}\in\mathbb{R}^s, c_{W_{f16}}\in\mathbb{R}^o$

- 8-bit ([−127, 127]) quantization method
  - Absmax: <img src="/data/papers/llmint8/absmax.png" width="400" />  
  - zeropoint: <img src="/data/papers/llmint8/zeropoint0.png" width="300" /> <img src="/data/papers/llmint8/zeropoint1.png" width="200" />

## 실험 결과
- 0.5 곱한건 heuristic 인 듯함.
<img src="/data/papers/llmint8/result.png" width="800" />

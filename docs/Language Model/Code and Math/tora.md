---
title: (논문 요약) TORA; A TOOL-INTEGRATED REASONING AGENT FOR MATHEMATICAL PROBLEM SOLVING
parent: Code and Math
---

**(논문 요약) TORA: A TOOL-INTEGRATED REASONING AGENT FOR MATHEMATICAL PROBLEM SOLVING** [(Paper)](https://arxiv.org/pdf/2309.17452)

## 핵심 내용
- sympy 등의 external symbolic solver 를 사용하여 reasoning.  
   - tool 활용 reasoning trajectory 를 supervised learning   
<img src="/data/papers/tora/concept.png" width="800" />

- Training
  - Imitation learning
     - ToRA-CORPUS generation: GPT-4 on the GSM8k and MATH training sets
     - loss: next reasoning, next action 예측 학습 (log likelihood)  
  - Teacher model: CodeLLaMA-34B trained on TORA-CORPUS 
  - Finetune LLaMA-2, CodeLLaMA series
<img src="/data/papers/tora/detail.png" width="800" />




## 실험 결과
<img src="/data/papers/tora/result.png" width="800" />
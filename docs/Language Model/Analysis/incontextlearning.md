---
title: (논문 요약) Learning without training; The implicit dynamics of in-context learning
parent: Analysis
---

**(논문 요약) Learning without training: The implicit dynamics of in-context learning** [(paper)](https://arxiv.org/pdf/2507.16003)

## 핵심 내용
- linear functions 학습 후, 임의의 sequence 가 주어졌을때 prediction 하는 task
   - train loss 및 validation loss: *a simple transformer* 로 계산한 eval set 에 대한 L2 loss
   - validation loss computed via $\Delta W$: derivation 으로 계산된 값 ($A$: self-attention layer)

<img src="/data/papers/incontextlearning/eq1.png" width="200" />   <img src="/data/papers/incontextlearning/eq2.png" width="200" />  

<img src="/data/papers/incontextlearning/result.png" width="800" />  

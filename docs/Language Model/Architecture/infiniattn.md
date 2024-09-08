---
title: (논문 요약) Leave No Context Behind; Efficient Infinite Context Transformers with Infini-attention
parent: Architecture
---

**(논문 요약) Leave No Context Behind: Efficient Infinite Context Transformers with Infini-attention** [(Paper)](https://arxiv.org/pdf/2404.07143.pdf)

## 핵심 내용

- 컨셉:
  - 이전 Key, Value 들을 compressive memory 형태로 유지.
  - 현재의 Query 를 통해서 원하는 부분 추출.
  - 현재의 Multi-Head-Attention 과 interpolation (head 당 interpolation weight 학습).
  - 
<img src="/data/papers/infiniattn/concept.png" width="400" />  

  - Memory: <img src="/data/papers/infiniattn/mem_retrieval1.png" width="150" /> 
  - Memory Retrieval: <img src="/data/papers/infiniattn/mem_retrieval.png" width="200" />   
      - $Q\in \mathbb{R}^{N\times d_{key}}$
      - $M_{s-1}\in \mathbb{R}^{d_{key}\times d_{value}}$
      - $A_{mem}\in \mathbb{R}^{N\times d_{value}}$ (N: input segment length)    
      - $\sigma$: nonlinear activation (논문에서는 ELU+1)   
      - $z_{s-1}\in \mathbb{R}^{d_{key}}$: normalization term  
  - Memory Update:
      - update linear: <img src="/data/papers/infiniattn/update_linear.png" width="500" />   
      - update linear delta: <img src="/data/papers/infiniattn/update_linear_delta.png" width="400" />


## 비교
<img src="/data/papers/infiniattn/comparison.png" width="800" />

## 실험
<img src="/data/papers/infiniattn/result.png" width="650" />
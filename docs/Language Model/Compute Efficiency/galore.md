---
title: (논문 요약) GaLore; Memory-Efficient LLM Training by Gradient Low-Rank Projection
parent: Compute Efficiency
---

**(논문 요약) GaLore: Memory-Efficient LLM Training by Gradient Low-Rank Projection** [(Paper)](https://arxiv.org/html/2403.03507v1)

## 핵심 내용
- Gradient Low-Rank Projection (GaLore)
  - reduces memory usage by up to 65.5% in optimizer states for pre-training LLaMA 1B and 7B on C4 dataset.  
  - 8-bit GaLore reduces optimizer memory by up to 82.5% and total training memory by 63.3% compared to BF16.  
- Method  
  - Gradient update 를 rank 가 낮은 subspace 로 제한함.
  - Component-wise gradient statistics 를 사용하는 optimizer (e.g. Adam, Adafactor) 에서 low-rank 정보만 들고 있음. 
  - 주기적으로 subspace 를 업데이트 함.    
  <img src="/data/papers/galore/method.png" width="600" />
  - Adam 을 사용할때의 알고리즘
  <img src="/data/papers/galore/algorithm.png" width="800" />
<img src="/data/papers/galore/comparison_lora.png" width="600" />  
- Result  
<img src="/data/papers/galore/result1.png" width="600" />  
<img src="/data/papers/galore/result2.png" width="800" />

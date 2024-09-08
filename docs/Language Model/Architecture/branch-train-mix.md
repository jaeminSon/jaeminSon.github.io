---
title: (논문 요약) Branch-Train-MiX; Mixing Expert LLMs into a Mixture-of-Experts LLM
parent: Architecture
---

**(논문 요약) Branch-Train-MiX: Mixing Expert LLMs into a Mixture-of-Experts LLM** [(Paper)](https://arxiv.org/pdf/2403.07816.pdf)

## 핵심 내용
- 목표: FeedForward layer 만 다르게 학습한 뒤, 모델 통합.
<img src="/data/papers/branch-train-mix/overview.png" width="800" />
- 방법: $N$ 개의 expert 모델이 주어질 때, 다음 식에서 
   - <img src="/data/papers/branch-train-mix/route.png" width="300" />
   - (1) routing function $g_i$ 학습.
   - (2) $W_l$ 학습.
   - 구현시 softmax 사용하고, TopK expert 만 살림.  
   - <img src="/data/papers/branch-train-mix/route2.png" width="300" />
   

- 결과: 능력치 꽉찬 통합 모델.
<img src="/data/papers/branch-train-mix/result1.png" width="800" />
<img src="/data/papers/branch-train-mix/result2.png" width="800" />

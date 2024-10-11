---
title: (논문 요약) Archon; An Architecture Search Framework for Inference-Time Techniques
parent: Agents
---

**(논문 요약) Archon: An Architecture Search Framework for Inference-Time Techniques** [(Paper)](https://arxiv.org/pdf/2409.15254)

## 핵심 내용
- 다음과 같은 Inference pipeline 구성  
<img src="/data/papers/archon/concept.png" width="800" />


- Bayesian optimization 으로 다음 hyperparamter 들에 대해 최적화 해나감.
    - Top-**K** LLM generators (measured with each benchmark)
    - Top-**K** samples from each generator
    - Number of Fusion Layers (위 예시는 Fusion layer 가 2개인 경우)
    - Top-**K** Fusers for Fusion Layers (measured with each benchmark)  


- 각 inference pipeline 의 정의  
<img src="/data/papers/archon/definition.png" width="800" />


## 실험 결과
<img src="/data/papers/archon/result.png" width="800" />

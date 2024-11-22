---
title: (모델 요약) Mixture-of-Transformers; A Sparse and Scalable Architecture for Multi-Modal Foundation Models
parent: Compute Efficiency
---

**(모델 요약) Mixture-of-Transformers: A Sparse and Scalable Architecture for Multi-Modal Foundation Models**[(paper)](https://arxiv.org/pdf/2411.04996)

## 핵심 내용
- Multimodal model 의 나중 layer 에서는 modality 별로 feature 가 나뉘어짐.  
<img src="/data/papers/mot/motivation.png" width="800" />

- 후기 layer 에서 modality 별로 feature extraction.
<img src="/data/papers/mot/method.png" width="800" />

## 실험 결과 
- Chameleon 7B: reduce 55.8% of training FLOPs
<img src="/data/papers/mot/result1.png" width="800" />

- Transfusion 7B: reduce ~2/3 of training FLOPs
<img src="/data/papers/mot/result2.png" width="800" />
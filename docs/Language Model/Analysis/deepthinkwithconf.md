---
title: (논문 요약) DEEP THINK WITH CONFIDENCE
parent: Analysis
---

**(논문 요약) DEEP THINK WITH CONFIDENCE** [(Paper)](https://arxiv.org/pdf/2508.15260)

## 핵심 내용
- 관찰: confidence 가 낮은 경우, 틀릴 확률이 높았음.

<img src="/data/papers/deepthinkwithconf/conf_threshold.png" width="800" />


1. confidence 낮은 trajectory early stop

<img src="/data/papers/deepthinkwithconf/conf_threshold.png" width="800" />

2. trajectories ensemble: 4가지 confidence metric 중 하나를 골라서 weighted sum

<img src="/data/papers/deepthinkwithconf/ensemble.png" width="800" />

## 실험 결과

- cons: majority voting for consistency

<img src="/data/papers/deepthinkwithconf/result1.png" width="800" />

- top-90% 남길지, top-10% 남길지

<img src="/data/papers/deepthinkwithconf/result2.png" width="800" />

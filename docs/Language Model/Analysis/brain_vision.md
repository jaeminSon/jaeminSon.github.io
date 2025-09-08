---
title: (논문 요약) Disentangling the Factors of Convergence between Brains and Computer Vision Models
parent: Training
---

**(논문 요약) Disentangling the Factors of Convergence between Brains and Computer Vision Models** [(Paper)](https://arxiv.org/pdf/2508.18226)

## 핵심 내용
- 뇌의 시각적 정보와 Dino-v3 모델의 유사성 측정

<img src="/data/papers/brain_vision/concept.png" width="800" />

- 다음을 최적화 (scikit-learn 의 RidgeCV 사용)

<img src="/data/papers/brain_vision/eq.png" width="300" />

- Encoding score: <img src="/data/papers/brain_vision/eq2.png" width="250" />

- Spatial score: 각 brain region 의 활동을 가장 잘 예측하는 layer $k$ 과 해당 region 의 hierarchical position $d$ 의 상관관계

- Temporal score: layer $k$ 와 각 layer 가 brain activity 가 가장 잘 예측된 시간 $t$ 의 상관관계

## 실험 결과
- Encoding score: 
    - primarily peak in the visual pathway (R=.45 ± .039 - SEM across subjects)
    - lateral-occipitotemporal (MT: R=.34±.026)
    - ventromedial visual cortex (VMV2: R=.28 ± .025)

- Spatial score: R=0.38

- Temporal score: R=0.96

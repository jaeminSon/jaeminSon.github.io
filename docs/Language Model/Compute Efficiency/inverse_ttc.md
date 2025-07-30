---
title: (모델 요약) Inverse Scaling in Test-Time Compute
parent: Compute Efficiency
---

**(모델 요약) Inverse Scaling in Test-Time Compute**[(paper)](https://arxiv.org/pdf/2507.14417)

## 핵심 내용 
- 4개 상황에서 reasoning length 가 성능에 미치는 영향 관찰
   - simple counting tasks with distractors
   - regression tasks with spurious features
   - deduction tasks with constraint tracking
   - advanced AI risks
- 최대 생성 토큰을 다르게 하여 성능 측정

  <img src="/data/papers/inverse_ttc/result.png" width="800" />

- 모델별 경향성이 다름

  <img src="/data/papers/inverse_ttc/tendency.png" width="800" />

- 최대 생성 토큰이 길면, Self-Reported Survival Instinct 가 증가함.

  <img src="/data/papers/inverse_ttc/safety.png" width="800" />
  <img src="/data/papers/inverse_ttc/safety2.png" width="800" />

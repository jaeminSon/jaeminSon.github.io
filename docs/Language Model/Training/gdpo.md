---
title: (논문 요약) GDPO; Group reward-Decoupled Normalization Policy Optimization for Multi-reward RL Optimization
parent: Training
---

**(논문 요약) GDPO: Group reward-Decoupled Normalization Policy Optimization for Multi-reward RL Optimization** [(paper)](https://arxiv.org/pdf/2601.05242)

## 핵심 내용
- GRPO 는 여러 reward 들을 합쳐서 scalar 로 변환후 normalize (e.g. format, correctness)
- 개별 reward 들을 normalize 한 뒤 (decouple normalization), 이 값들을 batch normalization (question 및 rollout 에 대해서 batch normalize)
- 다음 2가지를 방지
   - summation 으로 개별 reward 에 대한 정보가 사라지는 것
   - 개별 reward 들을 normalize 한 값이 scale 이 커서 값이 불안정한 것
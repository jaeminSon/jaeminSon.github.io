---
title: (논문 요약) Concise Reasoning via Reinforcement Learning
parent: Code and Math
---

**(논문 요약) Concise Reasoning via Reinforcement Learning** [(Paper)](https://arxiv.org/pdf/2504.05185)


## 핵심 내용
- 틀리는게 더 김.

<img src="/data/papers/concisereason/observation.png" width="800" />

- 학습이 될수록 답변이 길어짐.

<img src="/data/papers/concisereason/loss.png" width="400" />

- 학습
  - stage 1: PPO 로 어려운 문제 학습
  - stage 2: 풀수 있는 문제를 섞어줌

  <img src="/data/papers/concisereason/train.png" width="400" />

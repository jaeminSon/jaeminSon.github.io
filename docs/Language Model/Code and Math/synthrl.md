---
title: (논문 요약) Synthetic Data Generation & Multi-Step RL for Reasoning & Tool Use
parent: Code and Math
---

**(논문 요약) Synthetic Data Generation & Multi-Step RL for Reasoning & Tool Use** [(Paper)](https://arxiv.org/pdf/2504.04736)


## 핵심 내용
- multi-step trajectory 를 생성 후, 각 step 별로 LLM 으로 레이블

<img src="/data/papers/synthrl/stage1.png" width="800" />

- 각 step 별로 RL 학습 

<img src="/data/papers/synthrl/stage2.png" width="800" />

- inference 시, iterative 하게 생성 

<img src="/data/papers/synthrl/inference.png" width="800" />

## 실험 결과

<img src="/data/papers/synthrl/result.png" width="800" />

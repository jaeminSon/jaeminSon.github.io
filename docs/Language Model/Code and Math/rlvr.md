---
title: (논문 요약) Does Reinforcement Learning Really Incentivize Reasoning Capacity in LLMs Beyond the Base Model?
parent: Code and Math
---

**(논문 요약) Does Reinforcement Learning Really Incentivize Reasoning Capacity in LLMs Beyond the Base Model?** [(paper)](https://arxiv.org/pdf/2504.13837)

## 핵심 내용
- RLVR (Reinforcement Learning with Verifiable Rewards) 는 base model 의 exploration 을 억제하여 sampling efficiency 를 높여줌.

<img src="/data/papers/rlvr/sample_efficiency.png" width="800" />

- 여러 모델에서 비슷한 경향성 관찰됨.

<img src="/data/papers/rlvr/model.png" width="800" />

- 다른 RL methods 에서도 같은 현상이 발견됨.

<img src="/data/papers/rlvr/other_methods.png" width="800" />

- distillation 은 모델의 성능을 향상시키는 듯함.

<img src="/data/papers/rlvr/distillation.png" width="400" />



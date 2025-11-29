---
title: (논문 요약) DR Tulu; Reinforcement Learning with Evolving Rubrics for Deep Research
parent: Training
---

**(논문 요약) DR Tulu: Reinforcement Learning with Evolving Rubrics for Deep Research** [(Paper)](https://arxiv.org/pdf/2511.19399)


## 핵심 내용
- rubric 을 추가하면서 GRPO 로 학습
   - GPT-4.1 로 초기 rubric 생성.
   - GPT-4.1 로, 각 rollout + 현재 rubric 으로 새로운 rubric 생성.
   - 생성된 rubric 중 variance 가 높은 $K$ 개만 유지. 
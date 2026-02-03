---
title: (논문 요약) Reinforcement Learning via Self-Distillation
parent: Training
---

**(논문 요약) Reinforcement Learning via Self-Distillation** [(Paper)](https://arxiv.org/pdf/2601.20802`)

## 핵심 내용
- distillation 시 teacher 에 (environment) feedback 을 prompt 에 추가.
   - teacher (2 options)
       - student 의 EMA weight
       - current teacher 와 initial teacher 의 probability interpolation.
   - (environment) feedback
       - runtime error
       - failed test cases
       - (실패한 경우), successful trace
   - loss: KL(student policy || teacher policy) -> student 가 true distribution 에 오는 것이 핵심.
- GRPO 보다 나은 성능.

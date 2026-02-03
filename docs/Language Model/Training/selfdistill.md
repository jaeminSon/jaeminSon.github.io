---
title: (논문 요약) Self-Distillation Enables Continual Learning
parent: Training
---

**(논문 요약) Self-Distillation Enables Continual Learning** [(Paper)](https://arxiv.org/pdf/2601.19897)

## 핵심 내용
- distillation 시 teacher 에 expert demonstrations (ground truth examples) 를 prompt 에 추가.
   - teacher 의 weight: student 의 EMA.
   - expert demonstrations: data set 에 있는 예시.
   - loss: KL(student policy \|\| teacher policy) -> student 가 true distribution 에 오는 것이 핵심.
- SFT 보다 나은 성능 및 적은 forgetting.

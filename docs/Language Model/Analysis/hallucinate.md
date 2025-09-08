---
title: (논문 요약) Why Language Models Hallucinate
parent: Training
---

**(논문 요약) Why Language Models Hallucinate** [(Paper)](https://cdn.openai.com/pdf/d04913be-3f6f-4d2b-b283-ff432ef4aaa5/why-language-models-hallucinate.pdf)

## 핵심 내용
- Pretrain 시 error-free corpora 를 전부 암기하더라도 epistemic error 는 방지할수 없음.
- Post-train 시 정답을 1, 오답을 0으로 주므로, 잘 모르더라도 답을 내도록 편향되게 학습됨.
- 논문에서는 여러 lower bound 계산함
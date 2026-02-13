---
title: (논문 요약) iGRPO: Self-Feedback–Driven LLM Reasoning
parent: Training
---

**(논문 요약) iGRPO: Self-Feedback–Driven LLM Reasoning** [(paper)](https://arxiv.org/pdf/2602.09000)

## 핵심 내용
- Iterative Group Relative Policy Optimization
   - draft 여러개 생성후 verifiable reward 가 가장 높은 draft 선택
   - selected draft 를 prompt 에 추가하여 다시 생성
   - GRPO 로 학습
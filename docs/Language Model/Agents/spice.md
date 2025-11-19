---
title: (논문 요약) SPICE; Self-Play In Corpus Environments Improves Reasoning
parent: Agents
---

**(논문 요약) SPICE: Self-Play In Corpus Environments Improves Reasoning** [(Paper)](https://arxiv.org/pdf/2510.24684)


## 핵심 내용
- 동일한 모델로 2가지 역할을 하면서 두 Advantage 의 합을 DrGRPO 로 parameter update.
   - Challenger: corpus grounding 문제를 생성하며, reasoner 의 정답률 variance 가 reward.
   - Reasoner: text 를 보지 않고 추론을 통해 문제를 맞추면 reward. 
- 학습 데이터
   - 20,000 raw documents
       - Nemotron-CC-Math (50%): a math-focused corpus used to ground mathematically verifiable tasks.
       - NaturalReasoning (from DCLM) (50%): documents spanning diverse STEM, humanities, and social sciences for general reasoning.
---
title: (논문 요약) STaR; Self-Taught Reasoner Bootstrapping Reasoning With Reasoning
parent: Hallucination
---

**(논문 요약) STaR: Self-Taught Reasoner Bootstrapping Reasoning With Reasoning** [(Paper)](https://arxiv.org/pdf/2203.14465.pdf)

## 핵심 내용
- 목표: 정답이 무엇인지 알려주고 정당화 시키는 문장을 만들어 학습에 사용. 
<img src="/data/papers/star-self-taught/overview.png" width="800" />
  - hint 예시  
<img src="/data/papers/star-self-taught/hint.png" width="400" />
  
- 결과: QA 성능 향상 시킴.
  - STaR without rationalization: hint 없이 정답이 맞은 데이터 학습.
  - STaR with rationalization : hint 를 주고 정답이 맞은 데이터도 같이 학습. 
<img src="/data/papers/star-self-taught/main_result.png" width="800" />

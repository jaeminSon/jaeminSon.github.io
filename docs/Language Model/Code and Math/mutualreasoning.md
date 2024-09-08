---
title: (논문 요약) MUTUAL REASONING MAKES SMALLER LLMS STRONGER PROBLEM-SOLVERS
parent: Code and Math
---

**(논문 요약) MUTUAL REASONING MAKES SMALLER LLMS STRONGER PROBLEM-SOLVERS** [(Paper)](https://arxiv.org/pdf/2408.06195)

## 핵심 내용
- tree 를 생성하는 generator 와, 생성된 내용을 검증하는 discriminator 로 구성
<img src="/data/papers/mutualreasoning/concept.png" width="800" />
- tree generation 예시
<img src="/data/papers/mutualreasoning/tree.png" width="800" />
- discriminator (SLM2) 로 generated output (SLM1 결과) 과 consistency 계산
   - 앞쪽 token 을 prompt 로 해서 비슷한 내용이 생성되면 높은 점수
   - terminal node 에서 consistency 로 score 계산
<img src="/data/papers/mutualreasoning/discriminate.png" width="800" />

## 실험 결과
<img src="/data/papers/mutualreasoning/result.png" width="400" />

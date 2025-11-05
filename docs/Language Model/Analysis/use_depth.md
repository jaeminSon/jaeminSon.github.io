---
title: (논문 요약) HOW DO LLMS USE THEIR DEPTH?
parent: Analysis
---

**(논문 요약) HOW DO LLMS USE THEIR DEPTH?** [(Paper)](https://arxiv.org/pdf/2510.18871)

## 핵심 내용
- TunedLens (LogitLens 의 hidden layer 에 affine-projection 추가)
- "Guess-then-Refine"
   - 초기 layer 에서는 high-frequency tokens 들이 높은 확률값 갖음.
   - 깊은 layer 에서는 문맥에 적절한 tokens 들이 높은 확률값을 갖음.
- 실험 결과
   - speech analysis: 'function words' 가 초기 layer 에서 잘 prediect 됨.
   - Fact recall task:  multi-token answer 에서 첫번째 토큰은 더 깊은 layer 에서 결정되고, 이어지는 토큰들은 비교적 초기 layer 에서 결정됨
   - Multiple-choice task: 초기 layer 에서 답변 후보들 (A,B,C,D) 을 결정하고 깊은 layer 에서 최종 답을 결정함.
   
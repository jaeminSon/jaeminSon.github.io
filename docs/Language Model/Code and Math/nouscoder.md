---
title: (논문 요약) NousCoder-14B
parent: Code and Math
---

**(논문 요약) NousCoder-14B** [(Paper)](https://nousresearch.com/nouscoder-14b-a-competitive-olympiad-programming-model/)

## 핵심 내용
- Qwen3-14B 를 RL 로 학습.
- 학습 데이터: 총 24K problems
   - TACO Verified
   - PrimeIntellect's SYNTHETIC-1
   - LiveCodeBench (~07/31/2024)
- reward
   - 1: all test cases 통과
   - -1: 잘못된 결과, 15초 이상 소요, 4GB 이상 메모리 쓰는 코드
   - 전부 다 맞거나 전부 다 틀리는 문제 제외.
- pipeline RL
   - sequence generation in parallel asynchronosouly
   - update without stopping the sequence generation (끝난 sequence 를 모아서 loss 계산)
   - verifier 는 별도의 container 활용.
- DAPO, GSPO 및 GSPO-extension (GSPO+) 을 사용했지만 큰 차이 없었다고 함.
- context window 32k 로 학습후 40k 학습.
- inference 시의 prob 과 train 시의 prob 의 importance sampling 고려.

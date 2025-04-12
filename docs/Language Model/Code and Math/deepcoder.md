---
title: (블로그 요약) DeepCoder; A Fully Open-Source 14B Coder at O3-mini Level
parent: Code and Math
---

**(블로그 요약) DeepCoder: A Fully Open-Source 14B Coder at O3-mini Level** [(blog)](https://pretty-radio-b75.notion.site/DeepCoder-A-Fully-Open-Source-14B-Coder-at-O3-mini-Level-1cf81902c14680b3bee5eb349a512a51)


## 핵심 내용
- DeepCoder-14B-Preview 가 O3-Mini-2025-1-31 (Low), O1-2024-12-17 (Low) 와 비슷한 성능을 보임.

### 데이터 셋
- **TACO Verified** problems
- Verified problems from **PrimeIntellect’s SYNTHETIC-1** dataset
- **LiveCodeBench** problems (submitted  **May 1, 2023** ~ **July 31, 2024**)

### 학습
- 32개 H100 으로 2.5 주 동안 학습
- veRL library 활용
- code sandbox 로 Python subprocess 활용
- Reward 는 맞으면 1, 틀리면 0 (**중간 단계 reward 없음**)
- context 를 점진적으로 늘려서 학습해나감 (8K->16K->24K)
- GRPO 를 개선하여 GRPO+ 를 제안
   - Entropy loss 없앰
   - DAPO 에서 처럼 KL loss 없앰
   - DAPO 에서 처럼 길이 제한으로 끊어진 경우, loss 에서 제외
   - DAPO 에서 처럼 Clip High 
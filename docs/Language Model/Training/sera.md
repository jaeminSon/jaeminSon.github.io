---
title: (논문 요약) SERA; Soft-Verified Efficient Repository Agents
parent: Training
---

**(논문 요약) SERA: Soft-Verified Efficient Repository Agents** [(Paper)](https://allenai.org/papers/opencodingagents)

## 핵심 내용
- task: software bug patch
- teacher 를 활용하여 데이터 생성후 student 학습 (SFT only)
   - codebase, bugged function 을 teacher 에 input 으로 주고 patch 및 reasoning trajectory 생성 (P1, T1)
   - 생성된 patch 및 reasoning 을 teacher 에 input 으로 주고 pull request 생성
   - 작성된 pull request 를 teacher 에 input 으로 주고 patch 및 reasoning trajectory 생성 (P2, T2)
   - P1 과 P2 의 overlap 이 충분한 경우, 데이터로 활용
   - 총 200,000 synthetic trajectories 생성
- 모델
   - teacher: GLM-4.5-Air 혹은 GLM-4.6
   - student: Qwen3-32B

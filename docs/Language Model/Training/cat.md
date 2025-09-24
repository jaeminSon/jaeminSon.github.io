---
title: (논문 요약) Compute as Teacher; Turning Inference Compute Into Reference-Free Supervision
parent: Training
---

**(논문 요약) Compute as Teacher: Turning Inference Compute Into Reference-Free Supervision** [(paper)](https://arxiv.org/pdf/2509.14234)

## 핵심 내용
- Verifier 가 없는 상황에서 학습 가능한 알고리즘.
- 기본 알고리즘: GRPO
- 방법
   - rollouts + 이를 바탕으로 더 나은 결과를 생성해달라는 텍스트를 prompt 로 넣어 synthesized answer 생성.
   - 이 synthesized answer 는 정답일 확률이 높음.
- Reward 설계
   - verifiable: synthesized answer 과 final answer 가 같으면 1, 다르면 0
   - non-verifiable: synthesized answer 를 바탕으로 rubric 여러 항목을 생성한뒤, judge (GPT-4o) 로 각 rubric 이 맞는지 여부를 확인한뒤 normalized score 계산.

## 한계
- 모델이 학습될수록, 다양한 결과를 생성하지 않게 되며 rollouts 와 synthesized answer 가 비슷해짐.
- 모델 파라미터가 적은 경우, rollouts 에서 synthesized answer 생성해도 정답이 아닌 경우 발생. 
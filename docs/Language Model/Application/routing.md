---
title: (논문 요약) Adaptive LLM Routing under Budget Constraints
parent: Application
---

**(논문 요약) Adaptive LLM Routing under Budget Constraints** [(Paper)](https://arxiv.org/pdf/2508.21141)

## 핵심 내용
- Initial training: query 의 encoding 을 linear projection 하여 각 model 이 잘하는 query 를 더 잘 분리시키도록 학습
  - query encoding 의 linear projection: human preference data 로 triplet loss
  - 각 모델에 대한 embedding: softmax 로 모델링 하여 binary cross entropy 로 학습

- contextual multi-armed bandit (CMAB)
  - context: query
  - LLM: arm
  - reward: 개별 LLM 에 대한 embedding 과 query embedding (projected) 의 cosine similairy
  - LinUCB 알고리즘으로 업데이트 해나감.
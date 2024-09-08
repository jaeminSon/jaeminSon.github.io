---
title: (논문 요약) Scaling Instructable Agents Across Many Simulated Worlds
parent: Data
---

**(논문 요약) Scaling Instructable Agents Across Many Simulated Worlds** [(Paper)](https://arxiv.org/pdf/2407.03321)

## 핵심 내용
- state 의 graph 를 비교해서 평가      
<img src="/data/papers/planetarium/concept.png" width="800" />
  - placeholder equivalence: object 의 identity 고려 하지 않음
  - non-placeholder (strict) equivalence: object 의 identity 고려
- 데이터 예시 
<img src="/data/papers/planetarium/example.png" width="800" />

- 모델들의 성능: QLoRA (rank of 16) 로 finetuning  
<img src="/data/papers/planetarium/result.png" width="800" />

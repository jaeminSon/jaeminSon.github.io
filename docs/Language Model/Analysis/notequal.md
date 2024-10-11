---
title: (논문 요약) Not All LLM Reasoners Are Created Equal
parent: Analysis
---

**(논문 요약) Not All LLM Reasoners Are Created Equal** [(Paper)](https://arxiv.org/pdf/2410.01748)

## 핵심 내용
- Compositional GSM test 문제 예시
<img src="/data/papers/notequal/example.png" width="800" />

- LLM 이 Q1을 맞추는 확률을 $p$, Q2를 맞추는 확률을 $q$ 라고 했을때, 1과 2를 둘다 맞출 확률은 $pq$ 보다 낮음.  
   - 작은 모델일수록 compositional GSM 과 GSM8K 성능 차이가 큼.
<img src="/data/papers/notequal/problem.png" width="800" />
   
   - 수학 특화 모델도 비슷한 경향을 보임  
<img src="/data/papers/notequal/math_models.png" width="400" />


- GSM8K 로 instruction tuning 으로 성능을 높일때, 작은 모델들은 compositional GSM 의 성능폭이 상대적으로 적음.
<img src="/data/papers/notequal/instruction_tuning.png" width="800" />


- Q2 가 있을때, Q1 을 맞출 확률이 낮아짐 (distraction).
<img src="/data/papers/notequal/q2.png" width="800" />


- Q1 을 맞추는 경우에도, Q2 의 정확도는 Q2 만 풀때보다 낮음.
<img src="/data/papers/notequal/q2_acc.png" width="800" />


- few shot code 로 문제를 풀면 성능이 더 좋아짐.
<img src="/data/papers/notequal/code.png" width="800" />
   - few shot code 예시  
<img src="/data/papers/notequal/fewshot.png" width="800" />


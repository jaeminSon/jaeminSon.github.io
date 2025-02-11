---
title: (논문 요약) LIMO; Less Is More for Reasoning
parent: Code and Math
---

**(논문 요약) LIMO: Less Is More for Reasoning** [(Paper)](https://arxiv.org/pdf/2502.03387)


## 핵심 내용
- 한줄 요약: 수학 데이터를 엄선하면 적은 양으로 supervised fine-tuning 해도 괜찮은 성능을 낼수 있음.

- 수천만개 수학 데이터에서 817개 뽑아냄.
   - 어려운 문제
   - 학습 데이터에 없을 문제
   - 다양한 분야 및 개념

- CoT 생성
   - 저자 전부 817 문제 검토. 
   - 다음 조건에 부합하는 것들을 LLM 을 사용하여 걸러내어 817개의 CoT 데이터 구축.
      - clear and well-organized structural formatting with adaptive granularity in step decomposition
      - progressive concept introduction
      - clear articulation of key insights at critical points
      - thoughtful bridging of conceptual gaps
      - extremely frequent verification steps throughout the reasoning process

- 학습: Qwen2.5-32B-Instruct 로 LIMO 데이터 full-parameter fine-tune.

## 실험 결과
<img src="/data/papers/limo/result.png" width="800" />

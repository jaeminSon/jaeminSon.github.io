---
title: (논문 요약) AlphaGo Moment for Model Architecture Discovery
parent: Architecture
---

**(논문 요약) AlphaGo Moment for Model Architecture Discovery** [(Paper)](https://arxiv.org/pdf/2507.18074)

## 핵심 내용

- 컨셉: Self-evolving agent
   - 20M Param 모델을 만들고 1B tokens 으로 학습하면서 architecture 를 개선해나감
   - fitness: train loss, test benchmark 성능, LLM 의 평가값

- 사용한 LLM 모델
    - Researcher: O3 + GPT-4.1
    - Engineer: GPT-4.1
    - Analyst: O3

<img src="/data/papers/agent_nas/concept.png" width="800" />  

- Data
   - Train: FinewWeb-edu sample-10BT + sample-100BT datasets (context length of 2048 tokens)
   - Test: ARC-Challenge, ARC-Easy, BoolQ, HellaSwag, PIQA, Social IQA, WinoGrande


## 실험 결과

<img src="/data/papers/agent_nas/result.png" width="800" />

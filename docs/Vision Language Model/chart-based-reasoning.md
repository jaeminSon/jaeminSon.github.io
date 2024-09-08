---
title: (논문 요약) Chart-based Reasoning; Transferring Capabilities from LLMs to VLMs
parent: Vision Language Model
---

**(논문 요약) Chart-based Reasoning: Transferring Capabilities from LLMs to VLMs** [(Paper)](https://arxiv.org/pdf/2403.12596.pdf)

## 핵심 내용
- 테스트 데이터:  
<img src="/data/papers/chart-based-reasoning/chartqa.png" width="400" />
- 방법: 큰 모델 (PaLM 2-S, PaLM 2-L) 로 데이터 생성 후 학습.  
<img src="/data/papers/chart-based-reasoning/rationale.png" width="300" />  <img src="/data/papers/chart-based-reasoning/arithmatic.png" width="300" />
  - rationale 과 answer 을 따로 구분하여 loss 계산 ($\lambda=0.5$).  
<img src="/data/papers/chart-based-reasoning/loss.png" width="400" />

- 결과: 성능 향상.  
<img src="/data/papers/chart-based-reasoning/result.png" width="600" />

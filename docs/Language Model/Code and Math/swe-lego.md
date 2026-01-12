---
title: (논문 요약) SWE-LEGO; PUSHING THE LIMITS OF SUPERVISED FINE-TUNING FOR SOFTWARE ISSUE RESOLVING
parent: Code and Math
---

**(논문 요약) SWE-LEGO: PUSHING THE LIMITS OF SUPERVISED FINE-TUNING FOR SOFTWARE ISSUE RESOLVING** [(Paper)](https://www.arxiv.org/pdf/2601.01426)


## 핵심 내용
<img src="/data/papers/swe-lego/pipeline.png" width="800" />

- SWE-Lego dataset:32k high quality task instances and 18k validated trajectories (real+synthetic data) 
- refined SFT
   - error masking: tool call 에서 에러가 난 경우 (Incorrect Implementation, Localization Error) call 부분 mask
   - difficulty-based curriculum

<img src="/data/papers/swe-lego/error_masking.png" width="800" />

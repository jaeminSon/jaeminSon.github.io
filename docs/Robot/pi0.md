---
title: (논문 요약) π0; A Vision-Language-Action Flow Model for General Robot Control
parent: Robot
---

**(논문 요약) π0: A Vision-Language-Action Flow Model for General Robot Control** [(Paper)](https://www.physicalintelligence.company/download/pi0.pdf)


## 핵심 내용
- Architecture: pretrained PaliGemma vision (3B) + action expert (300M)
  - $q_t$: vector of joint angles

<img src="/data/papers/pi0/concept.png" width="800" />  

- 학습: flowing matching

<img src="/data/papers/pi0/flow_matching.png" width="600" />  

   - $v_{\theta}$: network
   - $A^{\tau}_t$: noisy action
   - $u(A^{\tau}_t\|A_t)$: denoising vector field



## 실험 결과
<img src="/data/papers/pi0/result.png" width="500" />  

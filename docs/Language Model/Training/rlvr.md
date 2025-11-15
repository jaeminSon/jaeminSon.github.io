---
title: (논문 요약) The Path Not Taken; RLVR Provably Learns Off the Principals
parent: Training
---

**(논문 요약) The Path Not Taken: RLVR Provably Learns Off the Principals** [(paper)](https://arxiv.org/pdf/2511.08567)

## 핵심 내용
- RLVR 의 학습 패턴은 SFT 와 다름.
   - SFT 는 high-curvature directions 을 따라 optimize 됨.
   - RLVR 는 low-curvature detour 를 따라 optimize 됨.
       - 학습 전후로 값이 비슷한 weights 가 많음 (모델에 따라 40%~90%)
       - weights 의 SVD 이후, U, V 의 각 vector 의 rotation 변화가 적음.
       - Singular Value 의 변화가 적음.

- RLVR 의 학습 패턴
   - KL constraints 가 parameter update 제한됨.
   - 기학습된 모델은 random weight initialization 과 다르게 structured 되어있음.
       - *a well-pretrained model possesses a highly structured geometry, e.g., spectral statistics and high-curvature directions during optimization*
   - low precision (BF16 against FP32) 일수록 update 가 coarse and sparse (mantissa 가 적어 fine-weight-update 가 잘려나감)
---
title: (논문 요약) FAST AND ACCURATE CAUSAL PARALLEL DECODING USING JACOBI FORCING
parent: Compute Efficiency
---

**(논문 요약) FAST AND ACCURATE CAUSAL PARALLEL DECODING USING JACOBI FORCING** [(Paper)](https://arxiv.org/pdf/2512.14681)

## 핵심 내용
- jacobi decoding: $n$ 개 토큰을 $k$ 회 생성

<img src="/data/papers/jacobiforcing/jacobidecoding.png" width="300" />

- consistency distillation: train multiple tokens prediction

- jacobi forcing
   - consistency distillation loss 계산시, 뒤쪽 block 은 noise ratio 가 높아지도록 noise 를 넣음.
   - autoregressive loss 에 추가하여 학습.
   - 기타 techniques 도 제안함.
   
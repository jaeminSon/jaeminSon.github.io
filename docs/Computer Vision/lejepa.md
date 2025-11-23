---
title: (논문 요약) LeJEPA; Provable and Scalable Self-Supervised Learning Without the Heuristics
parent: Computer Vision
---

**(논문 요약) LeJEPA: Provable and Scalable Self-Supervised Learning Without the Heuristics** [(Paper)](https://arxiv.org/pdf/2511.08544)

## 핵심 내용
- Motivation: Isotropic Gaussian embeddings uniquely reduce bias and variance.
   - Isotropic Gaussian: same variance in all directions.
   - Anisotropic Gaussian: different variancesdepending on the direction, forming an elliptical or stretched distribution.
- SIGReg loss 를 JEPA loss 에 추가.
   - A sketched Epps–Pulley characteristic-function test on many random 1D projections: each projected embedding distribution 가 a standard Gaussian 이 되도록함.
   - 이는 isotropic Gaussian embedding 이 되도록함.

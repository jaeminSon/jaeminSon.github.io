---
title: (논문 요약) LOTUS; Diffusion-based Visual Foundation Model for High-quality Dense Prediction
parent: Computer Vision
---

**(논문 요약) LOTUS: Diffusion-based Visual Foundation Model for High-quality Dense Prediction** [(blog)](https://lotus3d.github.io/)

## 핵심 내용
- train: 고정된 encoder 로 image, depth label 차원 줄여놓고, label 에 noise 더해서 denoising U-Net 학습. 
- inference: depth label 을 noise 로 시작해서 denoising.
- [**저자 blog**](https://lotus3d.github.io/) 에 내용이 간략히 잘 정리되어있음.
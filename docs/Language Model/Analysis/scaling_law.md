---
title: (논문 요약) Scaling Laws for Precision
parent: Training
---

**(논문 요약) Scaling Laws for Precision** [(Paper)](https://arxiv.org/pdf/2411.04330)

## 핵심 내용
- Quantized 가 심한 모델은 더 많은 pretraining 이 성능을 해침
- 주어진 compute budget 에서 optimal param, quantization 존재  
<img src="/data/papers/scaling_law/compute_optimal.png" width="800" />

- precision 이 주어졌을때 loss 를 예측하는 식까지 도출하나, 실험한 모델 사이즈가 작음 (220M~1.76B)
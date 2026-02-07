---
title: (논문 요약) Quantization-Aware Distillation for NVFP4 Inference Accuracy Recovery
parent: Training
---

**(논문 요약) Quantization-Aware Distillation for NVFP4 Inference Accuracy Recovery** [(paper)](https://arxiv.org/pdf/2601.20088)

## 핵심 내용
- high precision teacher 의 softmax output 을 quantized student 가 학습.
    - student 는 teacher 를 quantize 하여 initialize.
- Loss: KL($p_{teacher}$ \|\| $p_{student}$)
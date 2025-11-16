---
title: (논문 요약) AWQ; ACTIVATION-AWARE WEIGHT QUANTIZATION FOR ON-DEVICE LLM COMPRESSION AND ACCELERATION
parent: Compute Efficiency
---

**(논문 요약) AWQ: ACTIVATION-AWARE WEIGHT QUANTIZATION FOR ON-DEVICE LLM COMPRESSION AND ACCELERATION** [(paper)](https://arxiv.org/pdf/2306.00978)

## 핵심 내용
- salient activation 에 기여하는 weight 들이 존재한다는 것을 실험적으로 관찰함.
- quantize 할때, per-input-channel 내 group 별로 scale 을 다르게 하여 quantize.
   - $X$: per-input-channel average magnitude of activation
   - scale *$s=X^\alpha$*: $\alpha\in[0,1]$ 를 grid search 로 구함.
   - scaling 이후 weight clipping 적용
       - clipping range $[-c,c]$ 의 hyperparameter $c$ 는 grid search 로 최적화.

<img src="/data/papers/awq/concept.png" width="800" />
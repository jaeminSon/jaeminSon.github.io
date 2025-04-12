---
title: SigLIP 2; Multilingual Vision-Language Encoders with Improved Semantic Understanding, Localization, and Dense Features
parent: Foundation Model
---

**(논문 요약) SigLIP 2: Multilingual Vision-Language Encoders with Improved Semantic Understanding, Localization, and Dense Features** [(paper)](https://arxiv.org/pdf/2502.14786)

## 핵심 내용
- CLIP loss (siglip-v1) 에 EMA distillation 과 autoregressive loss 추가

<img src="/data/papers/siglip2/train.png" width="400" />

- 학습 데이터: WebLI dataset (10B images, 12B alt-texts, 109 languages, google-proprietary)

## 성능
- 0-shot classification

<img src="/data/papers/siglip2/vision_result.png" width="800" />

- Image retrieval 에서 SigLIP, SigLIP 2, mSigLIP 비교

<img src="/data/papers/siglip2/siglip_comparison.png" width="800" />

- Gemma 2 LLM 붙이고 학습 시, SigLIP, SigLIP 2, mSigLIP 성능 비교

<img src="/data/papers/siglip2/siglip_comparison2.png" width="800" />

- 6-layer transformer decoder 붙이고 mix of all RefCOCO variants 데이터로 학습 후, SigLip 과 SigLip 2 성능 비교 

<img src="/data/papers/siglip2/refcoco.png" width="800" />

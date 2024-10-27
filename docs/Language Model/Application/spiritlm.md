---
title: (논문 요약) SPIRIT LM; Interleaved Spoken and Written Language Model
parent: Application
---

**(논문 요약) SPIRIT LM: Interleaved Spoken and Written Language Model** [(Paper)](https://arxiv.org/pdf/2402.05755)

## 핵심 내용

<img src="/data/papers/spiritlm/concept.png" width="800" />
- Architecture
   - Llama-2 7B
   - HuBERT speech encoder
   - HifiGAN vocoder trained on the Expresso dataset

- Embedding
  - text: BPE
  - speech phonetic units: HuBERT token
  - Pitch token: VQ-VAE model trained on the F0 of the input speech
  - Style token: speechprop features

- 학습: autoregressive loss  
<img src="/data/papers/spiritlm/data.png" width="400" />


## 실험 결과
<img src="/data/papers/spiritlm/result.png" width="800" />



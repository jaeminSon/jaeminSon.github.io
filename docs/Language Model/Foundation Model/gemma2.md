---
title: (논문 요약) Gemma 2; Improving Open Language Models at a Practical Size
parent: Foundation Model
---

**(논문 요약) Gemma 2: Improving Open Language Models at a Practical Size** [(Paper)](https://storage.googleapis.com/deepmind-media/gemma/gemma-2-report.pdf)

## 핵심 내용
- 아키텍쳐  
<img src="/data/papers/gemma2/architecture.png" width="400" />
   - embedding-related 파라미터가 많음  
     <img src="/data/papers/gemma2/embedding_related.png" width="400" />
   - training infra  
     <img src="/data/papers/gemma2/training_infra.png" width="400" />

- 학습 데이터: web documents, code, and science articles 등 다양한 소스에서 발췌
   - 27B 모델: 13 trillion tokens of primarily-English data
   - 9B 모델: 8 trillion tokens
   - 2.6B 모델: 2 trillion tokens

## 모델 성능
<img src="/data/papers/gemma2/performance1.png" width="800" />
<img src="/data/papers/gemma2/performance2.png" width="800" />

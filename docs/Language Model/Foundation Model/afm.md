---
title: (논문 요약) Apple Intelligence Foundation Language Models
parent: Foundation Model
---

**(논문 요약) Apple Intelligence Foundation Language Models** [(Paper)](https://arxiv.org/pdf/2407.21075)

## 핵심 내용
- 기존에 알려진 방법론으로 애플 고유의 모델 개발
- Apple Intelligence architecture  
  <img src="/data/papers/afm/arch.png" width="800" />
- network architecture
   - shared input/output embedding matrix
   - Pre-Normalization with RMSNorm
   - Query/key normalization
   - Grouped-query attention (GQA)
   - SwiGLU activation
   - RoPE positional embeddings
- 데이터는 web 에서 직접 수집 (Applebot 이라는 web-crawler 사용)
- AFM-server 와 AFM-on-device 를 개발


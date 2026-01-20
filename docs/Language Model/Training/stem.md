---
title: (논문 요약) STEM; Scaling Transformers with Embedding Modules
parent: Training
---

**(논문 요약) STEM: Scaling Transformers with Embedding Modules** [(Paper)](https://arxiv.org/pdf/2601.10639)


## 핵심 내용
- SwiGLU FFN 에서 up-projection 을 token-indexed per-layer embedding look-up 으로 변경
- large angular spread embeddings (low cosine similarity between embedings)
    - 논문에서는 less interference between embeddings 라고 해석함.
- decoder‑only Transformers (350M, 1B) 로 scratch 부터 pretrain 하여 성능 비교.
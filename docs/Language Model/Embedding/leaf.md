---
title: (논문 요약) LEAF; Knowledge Distillation of Text Embedding Models with Teacher-Aligned Representations
parent: Embedding
---

**(논문 요약) LEAF: Knowledge Distillation of Text Embedding Models with Teacher-Aligned Representations** [(Paper)](https://arxiv.org/pdf/2509.12539)


## 핵심 내용
- leaf-ir: 23M, knowledge distillation from arctic-embed-m-v1.5 (≈109M)
- leaf-mt: 23M, knowledge distillation from mxbai-l-v1 (≈335M)
- Standard mode: the same leaf model encodes queries and documents
- Asymmetric mode: documents are embedded with the larger teacher, while queries are embedded with the smaller leaf model
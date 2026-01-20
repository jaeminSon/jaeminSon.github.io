---
title: (논문 요약) Conditional Memory via Scalable Lookup; A New Axis of Sparsity for Large Language Models
parent: Training
---

**(논문 요약) Conditional Memory via Scalable Lookup: A New Axis of Sparsity for Large Language Models** [(Paper)](https://arxiv.org/pdf/2601.07372)


## 핵심 내용
- 2-gram, 3-gram 으로 hash-based embedding (trained end-to-end)

<img src="/data/papers/conditional_memory/concept.png" width="800" />

- Hash
1. raw → canonical (all lowercase, etc)
2. multiplicative-XOR hash
3. concat all heads and 2-gram and 3-gram

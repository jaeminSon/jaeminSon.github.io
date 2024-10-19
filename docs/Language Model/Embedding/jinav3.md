---
title: (논문 요약) jina-embeddings-v3; Multilingual Embeddings With Task LoRA
parent: Embedding
---

**(논문 요약) jina-embeddings-v3: Multilingual Embeddings With Task LoRA** [(Paper)](https://arxiv.org/pdf/2409.10173)

## 핵심 내용
- Model specification  
<img src="/data/papers/jinav3/spec.png" width="800" />

- 개선사항
   - *Task-specific optimization with LoRA*
   - *Patching retrieval failures with synthetic data*
   - *Integration of latest techniques*
      - Matryoshka Representation Learning
      - Instruction tuning
      - Long-context retrieval


- Architecture  
<img src="/data/papers/jinav3/arch.png" width="800" />
   - XLM-RoBERTa 기반
      - XLM-RoBERTa tokenizer 그대로 사용.
      - absolute positional embeddings -> Rotary Position Embeddings (RoPE) 로 변경.

## 성능
<img src="/data/papers/jinav3/result.png" width="800" />

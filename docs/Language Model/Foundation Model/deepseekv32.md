---
title: (모델 요약) DeepSeek-V3.2; Pushing the Frontier of Open
parent: Foundation Model
---

**(모델 요약) DeepSeek-V3.2: Pushing the Frontier of Open** [(paper)](https://arxiv.org/pdf/2512.02556)

## 핵심 내용

### DeepSeek Sparse Attention (DSA)
- lightning indexer + fine-grained top‑k token selection
- $O(Lk)$ attention up to 128K tokens

### Continued pre‑training from DeepSeek‑V3.1‑Terminus 
- align the indexer to dense attention using a KL objective
- only top‑k key‑values are attended and both the model and indexer are optimized with 1T tokens

### Post‑training
- specialist distillation and large‑scale mixed RL (GRPO) 
    - across reasoning, agent, and alignment data, unifying domains (math, programming, logic reasoning, general agent tasks, agentic coding, and search) 
    - with both thinking and non‑thinking modes

### large‑scale GRPO with several key techniques
- An unbiased KL estimator correcting K3 bias
- Off‑Policy Sequence Masking based on KL divergence for negative-advantage samples
- preserve the expert routing paths used during sampling in the inference framework and enforce the same routing paths during training
- Keep Sampling Mask to align truncated action spaces for top‑p/top‑k sampling

## A large agentic task 
- synthesis pipeline generates **1,800+** environments and **85k** prompts 
- across search, code agents, code interpretation (Jupyter), and synthetic general tasks

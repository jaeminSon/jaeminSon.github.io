---
title: (논문 요약) Latent Collaboration in Multi-Agent Systems
parent: Agents
---

**(논문 요약) Latent Collaboration in Multi-Agent Systems** [(Paper)](https://arxiv.org/pdf/2511.20639)

## 핵심 내용

<img src="/data/papers/latent_collaboration/concept.png" width="800" />

- last‑layer hidden states 을 projection 한뒤, next-step input-embedding 으로 전달하여 $m$ 개 토큰 생성.
   - text token 보다 적게 latent 를 생성하고, token vocab projection 과 softmax 계산이 없어 시간이 단축됨 (2배~7배).
   - $m$ 개 토큰 생성시 생성된 KV cache 를 다른 agent 에게 전달.
      - linear chain (A -> B -> C)
      - star topology (coder, math, science experts -> summarizer)
   - Qwen3 models (4B, 8B, 14B) 사용.
   - projection 은 output embedding matrix 의 pseudo-inverse matrix 와 input embedding matrix 활용.

  <img src="/data/papers/latent_collaboration/projection.png" width="400" />

  
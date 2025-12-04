---
title: (논문 요약) Guided Self-Evolving LLMs with Minimal Human Supervision
parent: Training
---

**(논문 요약) Guided Self-Evolving LLMs with Minimal Human Supervision** [(Paper)](https://arxiv.org/pdf/2512.02472)


## 핵심 내용
- R-FEW: guided Self-Play Challenger–Solver framework 
   - A challenger samples human-labeled examples to guide synthetic question generation.
   - AsSolver trains on human and synthetic examples under an online, difficulty-based curriculum.
   - $\mathcal{H}_t$: historical data (previous questions, responses, document corpus)

<img src="/data/papers/guided_self_evolving/algorithm.png" width="800" />

- Related work

<img src="/data/papers/guided_self_evolving/related_work.png" width="800" />



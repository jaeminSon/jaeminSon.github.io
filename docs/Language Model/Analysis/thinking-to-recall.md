---
title: (논문 요약) Thinking to Recall; How Reasoning Unlocks Parametric Knowledge in LLMs
parent: Analysis
---

**(논문 요약) Thinking to Recall: How Reasoning Unlocks Parametric Knowledge in LLMs** [(Paper)](https://arxiv.org/pdf/2603.09906)

## 핵심 내용
- Reasoning Unlocks Latent Knowledge (reasoning on 성능 > reasoning off 성능)
- Less Capable Models Benefit More from Reasoning.
- Question Complexity is a Poor Predictor of Reasoning Effectiveness.
- How Reasoning Improves Parametric Recall?
  - Reasoning Tokens as a Computational Buffer: generating extra tokens during reasoning allows models to perform additional latent operations and to bypass the depth limits of a single forward pass on the input.
  - Factual Priming
- Hallucinating intermediate facts during reasoning increases the likelihood of hallucinations in the final answer.
- Directly improve model accuracy by prioritizing reasoning trajectories that contain hallucination-free factual statements.
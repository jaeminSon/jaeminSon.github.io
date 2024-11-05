---
title: (논문 요약) AFLOW; AUTOMATING AGENTIC WORKFLOW GENERATION
parent: Agents
---

**(논문 요약) AFLOW: AUTOMATING AGENTIC WORKFLOW GENERATION** [(Paper)](https://arxiv.org/pdf/2410.10762)


## 핵심 내용
- Agent workflow 를 개선해나감.
<img src="/data/papers/aflow/concept.png" width="800" />

<img src="/data/papers/aflow/algorithm.png" width="800" />
  - soft mixed probability of workflow $(i)$: <img src="/data/papers/aflow/mixed_soft.png" width="300" />
  - LLM 에 prompting 하여 expansion.
  - Optimizer (Expander): Claude-3.5-sonnet
  - Executors (Evaluator): DeepSeekV2.5, GPT-4o-mini-0718, Claude-3.5-sonnet-0620, GPT-4o-0513



## 실험 결과
<img src="/data/papers/aflow/result.png" width="800" />


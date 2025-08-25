---
title: (논문 요약) Beyond GPT-5; Making LLMs Cheaper and Better via Performance–Efficiency Optimized Routing
parent: Agents
---

**(논문 요약) Beyond GPT-5: Making LLMs Cheaper and Better via Performance–Efficiency Optimized Routing** [(Paper)](https://arxiv.org/pdf/2508.12631)


## 핵심 내용
- 각 query 별로 best model 을 선택.
   - Query 를  Qwen3-embedding-8B 로 embedding ($d=4096$)
   - score 계산 (model $i$ 의 cluster $j$ 에 대한 performance 및 efficiency)

<img src="/data/papers/beyondgpt5/score1.png" width="200" />

<img src="/data/papers/beyondgpt5/score2.png" width="250" />


## 실험 결과

<img src="/data/papers/beyondgpt5/result.png" width="800" />

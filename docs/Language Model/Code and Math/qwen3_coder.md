---
title: (논문 요약) Qwen3-Coder; Agentic Coding in the World
parent: Code and Math
---

**(논문 요약) Qwen3-Coder: Agentic Coding in the World** [(blog)](https://qwenlm.github.io/blog/qwen3-coder/)

## 핵심 내용
- Architecture: MoE
   - Total Params: 480B
   - Active Params: 35B
- Contex length: 256K

## 학습
- 7.5T tokens (70% code ratio)
- Qwen2.5-Coder 로 noisy data 를 clean 및 rewrite 하여 data quality 높임
- Post training: execution-driven large-scale reinforcement learning
   - real world coding tasks 의 test cases 를 점진적으로 복잡하게 발전시켜나감
   - "Hard to Solve, Easy to Verify"

## 성능
   <img src="/data/papers/qwen3_coder/performance.jpg" width="800" />

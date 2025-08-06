---
title: (논문 요약) Seed-Prover; Deep and Broad Reasoning for
parent: Code and Math
---

**(논문 요약) Automated Theorem Proving** [(paper)](https://arxiv.org/pdf/2507.23726)

## 핵심 내용
- IMO 2025 6 문제중 5문제 해결
- Seed-Geometry
   - TongGeometry 를 개선 (concise representation, c++ implementation)
   - Policy model (LLM): propose next auxiliary element to construct
- Seed-Prover
   - Conjecture Proposal (LLM) 를 활용하여 10–50 candidate conjectures 생성

   <img src="/data/papers/seed_prover/lemma.png" width="800" />  
   
   <img src="/data/papers/seed_prover/inference1.png" width="800" />  

   <img src="/data/papers/seed_prover/inference2.png" width="800" />  


- 학습: multi-stage, multi-task RL (reward 1 if proven 0 otherwise)
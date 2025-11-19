---
title: (논문 요약) MathSE; Improving Multimodal Mathematical Reasoning via Self-Evolving Iterative Reflection and Reward-Guided Fine-Tuning
parent: Code and Math
---

**(논문 요약) MathSE: Improving Multimodal Mathematical Reasoning via Self-Evolving Iterative Reflection and Reward-Guided Fine-Tuning** [(Paper)](https://arxiv.org/pdf/2511.06805)

## 핵심 내용
- 알고리즘 개요
   - for-loop 안에서 
      - CoT & result 가 correct 인 데이터를 늘려나가면서 fine-tune.
      - incorrect 인 경우, [inference + 그에 대한 Outcome Reward Model 의 review] 를 쌓아둠.
   - for-loop 탈출후, GPT‑4o 로 쌓인 incorrect 데이터에 대해서 query 하여 새로 데이터 생성후 ORM 으로 맞는것을 걸러내어 최종적으로 fine-tune.
- Outcome Reward Model (ORM)
   - CogVLM2 (built on Llama‑3‑8B) 사용.
   - 30k incorrect paths with GPT‑4o annotations + 30k correct CoT 로 fine-tune.

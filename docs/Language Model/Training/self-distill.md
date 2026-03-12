---
title: (논문 요약) On-Policy Self-Distillation for Reasoning Compression
parent: Training
---

**(논문 요약) On-Policy Self-Distillation for Reasoning Compression** [(Paper)](https://arxiv.org/pdf/2603.05433)

## 핵심 내용
- concise answer 를 내도록 prompting 하여 $KL(p_{student}\|p_{teacher})$

- Student Prompt

```
Solve the following math problem step by step. The last line of your
response should be of the form Answer: $Answer (without quotes) where
$Answer is the answer to the problem.
Find all real numbers x such that ...
Remember to put your answer on its own line after “Answer:”.
```

- Teacher Prompt

```
Conciseness instruction c: Solve the following math problem concisely
and correctly. Be direct –- avoid unnecessary elaboration, redundant
steps, or restating the problem. Focus only on the key reasoning steps
needed to reach the answer.
The last line of your response should be of the form Answer: $Answer
(without quotes) where $Answer is the answer to the problem.
Find all real numbers x such that ...
Remember to put your answer on its own line after “Answer:”.
```

## 실험 결과
- MATH-500 (Qwen3-8B and Qwen3-14B)
  - 57–59% token reduction
  - +9~16 accuracy
- AIME 2024 (Qwen-14B)
  - 41% token compression
  - +10 points
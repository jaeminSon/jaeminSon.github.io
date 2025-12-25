---
title: (논문 요약) Reasoning Models Can Be Effective Without Thinking
parent: Compute Efficiency
---

**(논문 요약) Reasoning Models Can Be Effective Without Thinking** [(paper)](https://arxiv.org/pdf/2504.09858)

## 핵심 내용
- DeepSeek-R1-Distill-Qwen 로 "NoThinking" 으로 inference 시 
   - low-budget scenarios 에서 "Thinking" 보다 나은 성능 (e.g., 51.3 vs. 28.9 on ACM 23 with 700 tokens)
   - *more competitive with pass@k as k increases*

- "NoThinking"
```
<|beginning of thinking|>
Okay, I think I have finished thinking.
<|end of thinking|>
```
---
title: (논문 요약) Executable Code Actions Elicit Better LLM Agents
parent: Code and Math
---

**(논문 요약) Executable Code Actions Elicit Better LLM Agents** [(Paper)](https://arxiv.org/pdf/2402.01030)

## 핵심 내용
- python interpreter 를 tool 로 사용하여, 결과를 반환받음.  
<img src="/data/papers/executable/concept.png" width="800" />

- Prompt for Code as Action  
<img src="/data/papers/executable/prompt.png" width="800" />


- Finetuning
   - LLaMA-2, Mistral-7B
   - Data: 7k high-quality multi-turn interaction trajectories


## 실험 결과
<img src="/data/papers/executable/result.png" width="800" />

- 실행 예시     
<img src="/data/papers/executable/example.png" width="800" />


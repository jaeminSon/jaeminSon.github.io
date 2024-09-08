---
title: (논문 요약) Faithful Logical Reasoning via Symbolic Chain-of-Thought
parent: Code and Math
---

**[(논문 요약) Faithful Logical Reasoning via Symbolic Chain-of-Thought](https://arxiv.org/pdf/2405.18357)**

## 핵심 내용
- first order logic 을 LLM 의 Chain of Thought 에 추가하여 성능 향상  
<img src="/data/papers/symboliccot/concept.png" width="400" />
- task definition  
<img src="/data/papers/symboliccot/task-definition.png" width="400" />
- pipeline  
<img src="/data/papers/symboliccot/framework.png" width="800" />
   - Translator  
      <img src="/data/papers/symboliccot/translator1.png" width="350" /><img src="/data/papers/symboliccot/translator2.png" width="350" />
   - Planner  
      <img src="/data/papers/symboliccot/planner.png" width="350" />
   - Solver   
      <img src="/data/papers/symboliccot/solver1.png" width="350" /><img src="/data/papers/symboliccot/solver2.png" width="350" />
   - Verifier   
      <img src="/data/papers/symboliccot/verifier.png" width="350" />
## 실험 결과
-     
<img src="/data/papers/symboliccot/result1.png" width="400" />  
<img src="/data/papers/symboliccot/result2.png" width="400" />  
---
title: (논문 요약) Can LLMs Design Good Questions Based on Context?
parent: Analysis
---

**(논문 요약) Can LLMs Design Good Questions Based on Context?** [(paper)](https://arxiv.org/pdf/2501.03491)

## 핵심 내용
- LLM 으로 생성된 질문들은 어떻게 다른지 6가지 차원으로 분석.    
<img src="/data/papers/llm_question/concept.png" width="800" />  
   - Question type
   - Question length
   - Context coverage
   - Answerability
   - Uncommonness
   - Required answer length

- prompt   
<img src="/data/papers/llm_question/prompt.png" width="500" />  

## 실험 결과
- *a strong preference for asking about specific facts and figures in both LLaMA and GPT models*  
<img src="/data/papers/llm_question/r1.png" width="500" />  

- *LLMs tend to exhibit distinct preferences for length*  
<img src="/data/papers/llm_question/r2.png" width="400" />  

- *LLM-based question generation displays an almost opposite positional focus compared to QA*  
<img src="/data/papers/llm_question/r4.png" width="400" />  
<img src="/data/papers/llm_question/r3.png" width="400" />  

- HotpotQA 와 비교큰 차이가 없으며, context 있으면 풀기 쉽고, 없으면 풀기 어려운 문제들을 생성.  
<img src="/data/papers/llm_question/r5.png" width="400" />  

- *LLM-generated questions still require significantly longer answers*  
<img src="/data/papers/llm_question/r6.png" width="400" />  



---
title: (논문 요약) ARITHMETIC WITHOUT ALGORITHMS; LANGUAGE MODELS SOLVE MATH WITH A BAG OF HEURISTICS
parent: Analysis
---

**(논문 요약) ARITHMETIC WITHOUT ALGORITHMS: LANGUAGE MODELS SOLVE MATH WITH A BAG OF HEURISTICS** [(paper)](https://arxiv.org/pdf/2410.21272)

## 핵심 내용
- LLM 은 arithmetic prompt (e.g. 12+13=) 을 풀때 operand 의 pattern 으로 neuron 들을 heuristic 으로 mapping.   
<img src="/data/papers/bagofheuristics/concept.png" width="800" />  

<img src="/data/papers/bagofheuristics/heuristics.png" width="800" />  

- 각 heuristic 에 해당하는 neuron 들의 activation 을 0 로 세팅하면 heuristic 에 해당되는 문제를 잘 못맞춤. 
<img src="/data/papers/bagofheuristics/knockout.png" width="800" />  

- Arithmetic prompt 에 특화된 neuron 이 존재.  
<img src="/data/papers/bagofheuristics/ablation.png" width="800" />  

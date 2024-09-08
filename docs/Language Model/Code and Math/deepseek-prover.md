---
title: (논문 요약) DeepSeek-Prover; Advancing Theorem Proving in LLMs through Large-Scale Synthetic Data
parent: Code and Math
---

**[(논문 요약) DeepSeek-Prover: Advancing Theorem Proving in LLMs through Large-Scale Synthetic Data](https://arxiv.org/pdf/2405.14333)**

## 핵심 내용
- 중등, 고등, 대학부 수학 문제를 Lean4 로 formalize
   <img src="/data/papers/deepseek-prover/overview.png" width="800" />
1. Autoformalization: generate formal mathematical statements from informal math problems   
<img src="/data/papers/deepseek-prover/autoformalization.png" width="800" />
2. Model scoring and hypothesis rejection: drop overly simplistic statements (using a model) or meaningless statements (by proving False conclusion - if solved, it means hypothesis is False)  
<img src="/data/papers/deepseek-prover/meaninglesshypothesis.png" width="800" />
3. Statement proving: 모델이 생성한 statement 는 False 인 것들이 있을수 있어, original statement 와 negation 에 대해서, DeepSeek-Prover 로 proof 를 생성하여, 풀리는 것을 데이터에 추가


## 데이터
- 869,659 high-quality natural language math problems (web scraping 후, data cleaning)
- 최초 data 생성시, DeepSeekMath-Base 7B (120 billion math-related tokens 로 학습) 을 MMA dataset (LEAN4 mathlib 을 natural language 로 변환한 것) 에 train 한 모델 사용  


## 실험 결과
<img src="/data/papers/deepseek-prover/result.png" width="800" />
- effect of iteration  
<img src="/data/papers/deepseek-prover/iteration.png" width="800" />
- 데이터 사이즈에 따른 성능 차이   
<img src="/data/papers/deepseek-prover/datasize.png" width="800" />
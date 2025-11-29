---
title: (논문 요약) Evolution Strategies at the Hyperscale
parent: Training
---

**(논문 요약) Evolution Strategies at the Hyperscale** [(Paper)](https://arxiv.org/pdf/2511.16652)

<img src="/data/papers/eggroll/concept.png" width="800" />

- expected fitness 와 gradient 

<img src="/data/papers/eggroll/e_fitness.png" width="300" /> 

<img src="/data/papers/eggroll/e_fitness_grad.png" width="500" />

- 알고리즘
   - $M=\mu+\sigma (\frac{1}{\sqrt{r}} AB^T)$ 로 구성.
   - $A,B\in R^{m\times r}$
   - $A,B$ 의 각 element 는 zero-mean, symmetric, absolutely continuous, finite 4th order moments, positive variance 인 분포함수에서 샘플 (e.g. Gaussian)
<img src="/data/papers/eggroll/algorithm.png" width="500" />

## 실험 결과
- PPO 보다 효율적인 학습

<img src="/data/papers/eggroll/result.png" width="800" />

---
title: (논문 요약) Real-Time Execution of Action Chunking Flow Policies
parent: Robot
---

**(논문 요약) Real-Time Execution of Action Chunking Flow Policies** [(Paper)](https://www.physicalintelligence.company/download/real_time_chunking.pdf)


## 핵심 내용
- 문제: inference 가 시작되고 계산된 결과를 수행하기까지 latency 가 있고, 그 동안 수행된 action 과 안맞을수 있음.

<img src="/data/papers/real_time_chunking/problem.png" width="500" />

- Pseudoinverse guidance 에 기반한 training-free image inpainting algorithm 활용

- Inpainting with Flow-Matching
   - $A_t^0$: sample from Gaussian
   - $A_t^{\tau+\frac{1}{n}}=A_t^{\tau}+\frac{1}{n}v(A_t^{\tau}, o_t, \tau)$
   - $v$: neural network
   - $\tau\in[0,1)$: flow matching timestep
   - $\hat{A_t^1}$: estimate of the final, fully denoised action chunk
   - $W$: mask

<img src="/data/papers/real_time_chunking/eq1.png" width="800" />

<img src="/data/papers/real_time_chunking/eq2.png" width="800" />

- $W$ 의 시각적 해석

<img src="/data/papers/real_time_chunking/w.png" width="800" />

- 알고리즘

<img src="/data/papers/real_time_chunking/algorithm.png" width="800" />


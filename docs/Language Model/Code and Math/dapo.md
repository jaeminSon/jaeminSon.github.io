---
title: (논문 요약) DAPO; An Open-Source LLM Reinforcement Learning System at Scale
parent: Code and Math
---

**(논문 요약) DAPO: An Open-Source LLM Reinforcement Learning System at Scale** [(Paper)](https://arxiv.org/pdf/2503.14476)


## 핵심 내용
- Dynamic sAmpling Policy Optimization (DAPO)
   - PPO 에서 $\frac{\pi_{\theta}(o_t)}{\pi_{\theta_old}(o_t)}$ 를 ($1-\epsilon$, $1+\epsilon$) 범위로 clipping 할때 upper bound 값을 높여 $\pi_{\theta_old}(o_t)$ 가 낮을때 $\pi_{\theta}(o_t)$ 가 높은 값을 갖을수 있도록 함.
   - reward 가 모두 같으면 0 advantage 도 0 이 되므로, 다양한 값이 섞일때까지 sample.

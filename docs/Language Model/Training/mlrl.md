---
title: (논문 요약) Maximum Likelihood Reinforcement Learning
parent: Training
---

**(논문 요약) Maximum Likelihood Reinforcement Learning** [(paper)](https://arxiv.org/pdf/2602.02710)

## 핵심 내용
- rl reward: $\nabla_{\theta}J_{RL}=\mathbb{E}[\nabla_{\theta}p_{\theta}(x)]=\nabla_{\theta}(pass@1)(x)$
- maximum likelihood reward: $\nabla_{\theta}J_{ML}=\mathbb{E}[\nabla_{\theta}\log p_{\theta}(x)]$
- Maclaurin expansion: $\log p(x) = -\sum_{k=1}^{\infty}\frac{(1-p(x))^k}{k}=-\sum_{k=1}^{\infty}\frac{(fail@k)(x)}{k}$
   - $\nabla_{\theta} J_{ML}(x)=\sum_{k=1}^{\infty}\frac{\nabla_{\theta} (pass@k)(x)}{k}$
   - $1=(pass@k)(x)+(fail@k)(x)$ 이므로
- maximum likelihood reinforcement learning (max-rl)
   - rl reward 와 maximum likelihood reward 의 interpolation, $\sum_{k=1}^{T}\frac{\nabla_{\theta} (pass@k)(x)}{k}$
   - $T$ 번 시행시, $K$ 번 성공했을때, $\hat{g}_T(x)$ 를 다음과 같이 정의.
      - $K>0$ 일때, $\hat{g}_T(x)=\sum_{i=1}^T \frac{\mathbb{I}[correct(o_i)]}{K} \nabla_{\theta}\log p_{\theta}(o_i|x)$
      - $K=0$ 일때, $\hat{g}_T(x)=0$
   - $\mathbb{E}[\hat{g}_T(x)]=\sum_{k=1}^{T}\frac{\nabla_{\theta} (pass@k)(x)}{k}$
- Expectation 을 0 으로 두기 위해 $\tilde{g}_T(x)$ 를 다음과 같이 정의.
   - $\tilde{g}_T(x)=\sum_{i=1}^N (\frac{\mathbb{I}[correct(o_i)]}{K}-\frac{1}{N})\nabla_{\theta}\log p_{\theta}(o_i|x)$

- 학습시 성능이 개선됨.

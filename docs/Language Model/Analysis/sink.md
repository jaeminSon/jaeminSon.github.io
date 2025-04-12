---
title: (논문 요약) Why do LLMs attend to the first token?
parent: Analysis
---

**(논문 요약) (논문 요약) Why do LLMs attend to the first token?** [(Paper)](https://arxiv.org/pdf/2504.02732)

## 핵심 내용
- Llama 405B 의 경우, 약 80% 의 attention 이 *bos* token 에 집중됨.
- *bos* token 이 있을때, 2번째 token 의 perturbation 에 robust 해짐.

<img src="/data/papers/sink/observation.png" width="800" />

<img src="/data/papers/sink/perturbation.png" width="800" />

### ablation
- pretrain 방법 (causal masking 혹은 intra-doc masking), *bos*, *eos* 사용 여부, *bos* 를 맨앞에 고정으로 사용할지 여부로 ablation study

<img src="/data/papers/sink/ablation_setting.png" width="800" />

- pretrain 방법이 causal masking 이던 intra-doc masking 상관 없이
     - *bos* token 을 놓고 학습을 하고 inference 시에 *bos* 를 쓰지 않으면 loss 가 올라감.
     - *bos* token 을 사용하지 않고 학습을 하면, inference 시에 *bos* 유무가 크게 중요하지 않는듯함.

<img src="/data/papers/sink/ablation.png" width="800" />

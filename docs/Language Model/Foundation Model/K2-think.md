---
title: (논문 요약) K2-Think; A Parameter-Efficient Reasoning System
parent: Foundation Model
---

**(논문 요약) K2-Think: A Parameter-Efficient Reasoning System** [(paper)](https://arxiv.org/pdf/2509.07604)


## 핵심 내용
- 학습
   - Qwen2.5 에서 시작
   - long chain-of-thought SFT
   - RL with verifiable rewards
   - Plan-Before-You-Think prompt restructuring
   - Best-of-N=3 selection
   - speculative decoding

- 성능
   - Best-of-3 이 성능을 많이 올림.

<img src="/data/papers/K2-think/best.png" width="600" />


- Ablation
   - SFT 하고 RL 하는게 성능 더 좋음.
   - generation length 를 낮추고 학습하면 회복이 안됨.

<img src="/data/papers/K2-think/ablation.png" width="800" />


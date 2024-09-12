---
title: (논문 요약) DeepSeek-V2; A Strong, Economical, and Efficient Mixture-of-Experts Language Model
parent: Foundation Model
---

**(논문 요약) DeepSeek-V2: A Strong, Economical, and Efficient Mixture-of-Experts Language Model** [(paper)](https://arxiv.org/pdf/2405.04434)


## 핵심 내용
- 모델
   - 236B total, 21B per token (MoE)
   - 128k context window
   - Multi-head Latent Attention 새로 제안
- 학습
   - pretrain: 8.1T tokens
   - SFT, RL 수행
- architecture  
<img src="/data/papers/deepseekv2/architecture.png" width="800" />
<img src="/data/papers/deepseekv2/attention.png" width="800" />

- 데이터: gpt4, claude 등의 모델을 활용하여 alignment 데이터 생성  

## 실험 결과
- benchmark 에서 gpt4v 와 비슷  
<img src="/data/papers/deepseekv2/result.png" width="800" />

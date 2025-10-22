---
title: (논문 요약) Ling-1T
parent: Foundation Model
---

**(논문 요약) Ling-1T** [(model)](https://huggingface.co/inclusionAI/Ling-1T)


## 핵심 내용
- 모델
   - 1T total, 50B active
   - 128k context window
   - Multi Token Prediction layers
   - Aux-loss-free, sigmoid-scoring expert routing with zero-mean updates
   - QK Normalization 
- 학습
   - pretrain: 20T high-quality tokens, 후반에는 > 40% reasoning-dense data
   - FP8 으로 학습 (+15% speedup, < 0.1% loss deviation from BF16 )
   - SFT, RL 수행

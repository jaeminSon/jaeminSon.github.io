---
title: (논문 요약) Open Mixture-of-Experts Language Models
parent: Foundation Model
---

**(논문 요약) Open Mixture-of-Experts Language Models** [(paper)](https://arxiv.org/pdf/2409.02060) [(model)](https://hf.co/allenai/OLMoE-1B-7B-0924) [(data)](https://hf.co/datasets/allenai/OLMoE-mix-0924) [(code)](https://github.com/allenai/OLMoE)

## 핵심 내용

- total 7B, 1B per input token MoE 모델 및 학습 데이터 공개  
<img src="/data/papers/openmoe/concept.png" width="800" />

- architecture  
   - Mixture of Experts Module: Top-k experts 의 softmax 로 weighting ($k=8$ out of 64 experts)    
<img src="/data/papers/openmoe/architecture.png" width="800" />
   - key design
<img src="/data/papers/openmoe/design.png" width="800" />
   - add layer normalization after the queryand key projections (QK-Norm)

- 학습 자원: 128 H100 GPUs 사용 

- 안정적인 학습을 위한 loss 및 initialization 방법 서술
   - 일부 experts 에 몰리는 현상 방지하기 위해 load balacing loss 추가
   - large logit penalize 하는 Router Z-loss
   - truncated normal initialization
   - RMSNorm

## 실험 결과
- MoE 의 효과  
<img src="/data/papers/openmoe/result.png" width="800" />
- 타 모델과 비교  
<img src="/data/papers/openmoe/othermoe.png" width="800" />
- adaption 효과  
<img src="/data/papers/openmoe/adaptation.png" width="800" />
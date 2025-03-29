---
title: (논문 요약) Hunyuan-Large; An Open-Source MoE Model with 52 Billion Activated Parameters by Tencent
parent: Foundation Model
---

**(논문 요약) Hunyuan-Large: An Open-Source MoE Model with 52 Billion Activated Parameters by Tencent** [(Paper)](https://arxiv.org/pdf/2411.02265)

## 핵심 내용
- Tokenizer: tiktoken tokenizer 에서 100K tokens + 중국어 28K tokens
- Max 256K tokens  
<img src="/data/papers/hunyuan/overview.png" width="800" />
   
- Data 생성
   - 수학, 논리, QA 등 각 도메인의 instruction 을 생성, 발전 시키는 모델을 학습함
   - step 2 evolve 에서는 명확성, 다양성, 난이도를 높임

<img src="/data/papers/hunyuan/data_synthesis.png" width="800" />


- 기타 
   - Mixed expert routing strategy (Shared + Specialized, Recycle routing)
   - Expert-specific learning rate strategy
   - Key-value cache compression technique
   - Scaling laws 

## 성능
<img src="/data/papers/hunyuan/result.png" width="800" />
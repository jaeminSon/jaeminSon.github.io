---
title: (논문 요약) Phi-4-reasoning Technical Report
parent: Code and Math
---

**(논문 요약) Phi-4-reasoning Technical Report** [(Paper)](https://arxiv.org/pdf/2504.21318)

## 핵심 내용
- Phi-4-reasoning: 선별된 reasoning data 로 Phi-4 (13B) 를 SFT
    - math and coding, and alignment data for safety and Responsible AI 관련 질문을 추출
    - o3-mini 의 multiple responses 과 약한 모델들 (e.g. Phi-4, GPT-4o) 과의 차이를 바탕으로 난이도 부여
    - 1.4M prompt-response pairs
    - 8.3B unique tokens 
- Phi-4-reasoning-plus: Phi-4-reasoning 에서 GRPO 로 추가 학습 

<img src="/data/papers/phi4reason/result.png" width="800" />


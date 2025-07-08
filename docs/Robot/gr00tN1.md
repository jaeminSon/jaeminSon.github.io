---
title: (논문 요약) GR00T N1; An Open Foundation Model for Generalist Humanoid Robots
parent: Robot
---

**(논문 요약) GR00T N1: An Open Foundation Model for Generalist Humanoid Robots** [(Paper)](https://arxiv.org/pdf/2503.14734)


## 핵심 내용
- Eagle-2 VLM (SigLIP-2 + SmolLM2 의 LLM) 추가 학습
- Action 부분은 embedding 을 denoising 하는 방식 (pi0.5 와 같음)

<img src="/data/papers/gr00tN1/concept.png" width="800" />  

- 실제 데이터
  - GR00T N1 Humanoid Pre-Training Dataset
  - Open X-Embodiment
  - AgiBot-Alpha

- 생성 데이터
  - pre-trained video generation models 로 88 시간 짜리 in-house 데이터 학습하여 827 시간 데이터 생성
  - latent action 은 VQ-VAE model 학습 

<img src="/data/papers/gr00tN1/synthetic_data.png" width="800" />  

- 시뮬레이션 데이터: DexMimicGen 로 780,000 simulation trajectories 생성 (6,500 hours)

- 학습 자원
   - GR00T-N1-2B: ~50,000 H100 GPU hours for pretraining


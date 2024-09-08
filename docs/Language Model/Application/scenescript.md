---
title: (논문 요약) SceneScript; Reconstructing Scenes With An Autoregressive Structured Language Model
parent: Application
---

**(논문 요약) SceneScript: Reconstructing Scenes With An Autoregressive Structured Language Model** [(Paper)](https://arxiv.org/pdf/2403.13064.pdf)

## 핵심 내용
- 목표: 방안을 돌아다니며 수집한 영상 데이터로 건축 구조를 코드화 하여 모델링. 
<img src="/data/papers/scenescript/objective.png" width="800" />
- 데이터: Aria Synthetic Environments (100k indoor scenes, photorealistic and ground-truth annotated renders of egocentric scene walkthroughs)
<img src="/data/papers/scenescript/data.png" width="800" />

- 방법
  - (1) point cloud 나 image sequence 를 encode.
  - (2) autoregressive decoder 의 input 으로 넣음.
<img src="/data/papers/scenescript/pipeline.png" width="800" />

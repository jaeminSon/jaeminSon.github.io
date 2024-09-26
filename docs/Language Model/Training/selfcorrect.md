---
title: (논문 요약) Training Language Models to Self-Correct via Reinforcement Learning
parent: Training
---

**(논문 요약) Training Language Models to Self-Correct via Reinforcement Learning** [(Paper)](https://arxiv.org/pdf/2409.12917)

## 핵심 내용 
- 첫번째 response 에 대해서, 이를 수정하여 2번째 response 생성  
<img src="/data/papers/selfcorrect/concept.png" width="800" />

- 학습
<img src="/data/papers/selfcorrect/detail.png" width="800" />
  - reward: 논문에서 자세히 안나오고, 예시로 string-matching based answer checking function 같은 oracle reward 가 존재한다고 가정.
  - stage 1: <img src="/data/papers/selfcorrect/first_loss.png" width="600" />
  - stage 2: <img src="/data/papers/selfcorrect/second_reward.png" width="400" />



## 실험 결과
<img src="/data/papers/selfcorrect/result.png" width="800" />
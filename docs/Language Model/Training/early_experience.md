---
title: (논문 요약) Agent Learning via Early Experience
parent: Training
---

**(논문 요약) Agent Learning via Early Experience** [(Paper)](https://arxiv.org/pdf/2510.08558)

## 핵심 내용
- state: text
- action: text
- expert trajectory: 학습해야할 대상
   - human demonstrations
   - Teacher AI Model 의 결과값
   - existing dataset 에서 추출한 경로
   - optimal solver 로 구한 해
- off-the-shelf llm 이 직접 학습 데이터를 생성.
   - 생성된 데이터를 이제는 off-the-shelf 모델 학습에 사용.
   - expert trajectory 주변에서 발생할수 있는 action, state 관계를 학습.
   - expert trajectory 의 rationale 을 학습.

<img src="/data/papers/early_experience/concept.png" width="800" />

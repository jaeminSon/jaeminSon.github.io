---
title: (논문 요약) Latent Implicit Visual Reasoning
parent: Vision Language Model
---

**(논문 요약) Latent Implicit Visual Reasoning** [(paper)](https://arxiv.org/pdf/2512.21218)

## 핵심 내용
- 주어진 task 에 맞게 latent visual token 학습.
   - $K$ 개의 ```<latent_token>``` 을 input 에 추가.
      - ```<visual_token><prompt_token>``` 뒤에 붙임.
      - ```<visual_token>``` 과 ```<prompt_token>``` 를 attend.
      - random initialize 되며, embedding 을 학습.
- 2-phase 학습
   - phase 1: ```<prompt_token>``` 및 ```<generated_token>``` 은 ```<visual_token>``` 에 대한 attention 을 masking 함.
   - phase 2: ```<visual_token>``` 에 대한 masking 제거 후 추가 학습.
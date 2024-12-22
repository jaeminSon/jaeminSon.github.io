---
title: (논문 요약) Training Large Language Models to Reason in a Continuous Latent Space
parent: Code and Math
---

**(논문 요약) Training Large Language Models to Reason in a Continuous Latent Space** [(Paper)](https://arxiv.org/pdf/2412.06769)


## 핵심 내용
- Input embedding 을 생성 (continuous space)  
<img src="/data/papers/coconut/concept.png" width="800" />

- 학습시 step 한 단계를 $c$ 단계의 continuous token(s) 으로 대체  
<img src="/data/papers/coconut/training.png" width="800" />

## 실험 결과
<img src="/data/papers/coconut/result.png" width="800" />
- iCoT: internalized CoT
- Pause token: special <pause> tokens inserted between the question and answer
- w/o curriculum: directly train questions and answers in the final stage
- w/o thought: no continuous latent thought generated
- pause as thought: <pause> tokens to replace the continuous thoughts

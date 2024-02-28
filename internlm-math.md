---
layout: default
---

**(논문 요약) InternLM-Math: Open Math Large Language Models Toward Verifiable Reasoning** [(Paper)](https://arxiv.org/pdf/2402.06332.pdf)

## 핵심 내용

- 모델: decoder-only transformer ([InterLM](https://github.com/InternLM/InternLM) 이라는 자체 pretrained LLM)

- 학습: <span style="color:red"> 다양한 task 의 데이터 쌍 학습 </span> (e.g. problem->COT, [aug]+problem->aug-problem)    
<img src="./data/papers/internlm-math/train.png" width="600" />

- Reasoning interleaved with coding: 작은 문제를 code 로 풀고 결과 취합해서 최종 답 생성     
<img src="./data/papers/internlm-math/rico.png" width="600" />

## 실험
- Pretrain 데이터: filtering, depulication 이후 31.2B tokens   
<img src="./data/papers/internlm-math/pretrain-data.png" width="600" />

- SFT 데이터: filtering, depulication 이후 31.2B tokens   
<img src="./data/papers/internlm-math/sft-data.png" width="600" />

- 타 모델과 비교  
<img src="./data/papers/internlm-math/internmath_result.png" width="400" />


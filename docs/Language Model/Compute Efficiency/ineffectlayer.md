---
title: (논문 요약) The Unreasonable Ineffectiveness of the Deeper Layers
parent: Compute Efficiency
---

**(논문 요약) The Unreasonable Ineffectiveness of the Deeper Layers** [(Paper)](https://arxiv.org/pdf/2403.17887.pdf)

## 핵심 내용

- 컨셉: n 개 layer 를 자를때, 가장 영향이 적은 덩어리를 잘라냄. 이후 pretrain 혹은 finetuning 으로 상처를 healing 해줌.
<img src="/data/papers/ineffectlayer/overview.png" width="800" />
  - intuition: residual 식에서, output 을 가장 적게 변화시키는 레이어들을 없애줌.  
  <img src="/data/papers/ineffectlayer/eq1.png" width="300" /> 
  <img src="/data/papers/ineffectlayer/eq4.png" width="200" />  인 경우 <img src="/data/papers/ineffectlayer/eq3.png" width="300" />  
  여러 레이어에 걸쳐 차이가 미미한 경우, <img src="/data/papers/ineffectlayer/eq5.png" width="200" />  
  
- algorithm  
  <img src="/data/papers/ineffectlayer/algorithm.png" width="500" />  
  <img src="/data/papers/ineffectlayer/eq.png" width="400" />

## 실험
<img src="/data/papers/ineffectlayer/result.png" width="800" />

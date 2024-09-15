---
title: (논문 요약) Are Emergent Abilities of Large Language Models a Mirage?
parent: Analysis
---

**(논문 요약) Are Emergent Abilities of Large Language Models a Mirage?** [(paper)](https://arxiv.org/pdf/2304.15004)

## 핵심 내용
- emergent abilities (모델의 크기를 늘렸을때 갑자기 생기는 능력) 는 metric choice 때문임  
   - 기존: discrete metric (Multiple Choice Grade, Exact String Match)
   - continuous metric 사용시, 모델 크기에 따라 smooth 하게 성능 증가  

- emergent abilities  
<img src="/data/papers/mirage/emergent.png" width="800" />  

- metric 을 token accuracy 와 edit distance 로 바꾸었을때  
<img src="/data/papers/mirage/smooth.png" width="800" />  
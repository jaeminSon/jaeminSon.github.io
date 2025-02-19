---
title: (논문 요약) Native Sparse Attention; Hardware-Aligned and Natively Trainable Sparse Attention
parent: Architecture
---

**(논문 요약) Native Sparse Attention: Hardware-Aligned and Natively Trainable Sparse Attention** [(Paper)](https://arxiv.org/pdf/2502.11089)

## 핵심 내용
<img src="/data/papers/nsa/arch.png" width="800" />  
- compression: key, value 를 압축시킴 (stride 를 두고, 길이를 $L\rightarrow 1$)
- selection: key, query 의 dot product 가 높은 key, value 가져옴 (GQA, MQA 의 경우 query head 들 전부 더함)
- sliding attention: last length $L$
 
<img src="/data/papers/nsa/optimization.png" width="800" />  
- load all head quries
- inner loop 에서 key, value 로딩

## 실험
<img src="/data/papers/nsa/result.png" width="800" />  
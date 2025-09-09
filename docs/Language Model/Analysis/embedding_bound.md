---
title: (논문 요약) On the Theoretical Limitations of Embedding-Based Retrieval
parent: Analysis
---

**(논문 요약) On the Theoretical Limitations of Embedding-Based Retrieval** [(Paper)](https://arxiv.org/pdf/2508.21038)

## 핵심 내용
- $m$ 개의 queries, $n$ 개의 documents 가 주어질때, $m\times n$ qrel matrix (query-document 가 related 인지 나타내는 binary matrix) 가 계산됨.
- qrel matrix 의 row-order 를 모두 표현하기 위한 vector 의 dimension 개수를 이론적으로 도출.
   - dot product 로 계산된 $m\times n$ matrix 는 $m\times d$ matrix 와 $d\times n$ matrix 의 행렬곱.
   - $d$ 와 rank 의 상관관계를 이용.

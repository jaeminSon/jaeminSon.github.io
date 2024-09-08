---
title: (논문 요약) Speculative RAG; Enhancing Retrieval Augmented Generation through Drafting
parent: RAG
---

**(논문 요약) Speculative RAG: Enhancing Retrieval Augmented Generation through Drafting** [(Paper)](https://arxiv.org/pdf/2407.08223)

## 핵심 내용
- specialists RAG drafter 로 여러 관점에서 생성뒤, general LM 으로 평가해서 best 선택  
<img src="/data/papers/speculativeRAG/concept.png" width="800" />
- algorithm   
<img src="/data/papers/speculativeRAG/algorithm.png" width="800" />

## 실험 결과
- increase accuracy by up to 12.97%, reduce latency by 51% compared to conventional RAG systems on PubHealth  
<img src="/data/papers/speculativeRAG/result.png" width="800" />
<img src="/data/papers/speculativeRAG/ablation.png" width="800" />

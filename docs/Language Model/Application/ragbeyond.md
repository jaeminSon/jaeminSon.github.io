---
title: (논문 요약) Retrieval Augmented Generation (RAG) and Beyond; A Comprehensive Survey on How to Make your LLMs use External Data More Wisely
parent: Application
---

**(논문 요약) Retrieval Augmented Generation (RAG) and Beyond: A Comprehensive Survey on How to Make your LLMs use External Data More Wisely** [(Paper)](https://arxiv.org/pdf/2409.14924)

## 핵심 내용
- RAG 의 단계를 난이도에 따라 4개로 나눔  
<img src="/data/papers/ragbeyond/level.png" width="800" />
   - lv1: 단순 외부 지식
   - lv2: 2단계 이상의 외부 지식 사용
       - *What is the majority party now in the country where Canberra is located?*
   - lv3: 외부 가이드라인 참조
       - *How to apply US visa?*
   - lv4: 데이터에서 hidden rationales 뽑아서 답변
       - *How the current economic situations affect the company's future*

- Embedding matching 방식 3가지   
<img src="/data/papers/ragbeyond/rag.png" width="800" />


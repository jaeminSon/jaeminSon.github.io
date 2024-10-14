---
title: (논문 요약) Astute RAG; Overcoming Imperfect Retrieval Augmentation and Knowledge Conflicts for Large Language Models
parent: RAG
---

**(논문 요약) Astute RAG: Overcoming Imperfect Retrieval Augmentation and Knowledge Conflicts for Large Language Models** [(Paper)](https://arxiv.org/pdf/2410.07176)

## 핵심 내용
- Motivation: RAG 가 잘못되서 respose 가 잘못되는 경우 발생.    
<img src="/data/papers/astuterag/motivation1.png" width="800" />
<img src="/data/papers/astuterag/motivation2.png" width="800" />

- Astute RAG 의 실행 예시  
<img src="/data/papers/astuterag/example.png" width="800" />

- Algorithm: LLM 에 query 로 다음을 요청.
   - Cluster consistent information.
   - Cluster conflicting information.
   - Exclude information irrelevant to the query.  
<img src="/data/papers/astuterag/concept.png" width="800" />

## 실험 결과
<img src="/data/papers/astuterag/result.png" width="800" />
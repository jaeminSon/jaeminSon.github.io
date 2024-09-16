---
title: (논문 요약) Knowing When to Ask - Bridging Large Language Models and Data
parent: Application
---

**(논문 요약) Knowing When to Ask - Bridging Large Language Models and Data** [(Paper)](https://docs.datacommons.org/papers/DataGemma-FullPaper.pdf?utm_source=substack&utm_medium=email)

## 핵심 내용
- Retrieval Interleaved Generation (RIG) 는 statistic token 을 활용하여 직접 query 함.  
<img src="/data/papers/datagemma/concept.png" width="800" />

- 구현
  - instruction-response dataset 으로 finetune
  - 자연어 query 를 DB 의 SQL 로 변환은 heuristic 으로 내용 추출
      - 통계 변수: embeddings-based semantic search index
      - 장소: string-based named entity
      - attribute: regex-based heuristics
  - 추출된 entity 를 template 에 대입
      - template 예시: How many XX in YY?, What are the most significant XX in YY?

- (논문에서 성능은 RAG 가 더 나았음)



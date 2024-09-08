---
title: (논문 요약) MEDICAL GRAPH RAG; TOWARDS SAFE MEDICAL LARGE LANGUAGE MODEL VIA GRAPH RETRIEVALAUGMENTED GENERATION
parent: RAG
---

**(논문 요약) MEDICAL GRAPH RAG: TOWARDS SAFE MEDICAL LARGE LANGUAGE MODEL VIA GRAPH RETRIEVALAUGMENTED GENERATION** [(Paper)](https://arxiv.org/pdf/2408.04187)

## 핵심 내용
- Semantic Document Segmentation: 내용 단위로 끊음
- Element Extraction: name (exact or medical term), type (predefined), description (llm generated)
- Hierarchy Linking
   - first level: 환자 데이터
   - second level: 의학 교과서 및 논문
   - third level: Unified Medical Language System
- Relationship Linking: source, target 의 relationship 의 relatedness 를 LLM 으로 평가후, 가까운것들은 하나로 cluster
- Tags generation and merge the graphs: cluster 들 끼리도 relatedness 가 높은 경우, 하나로 합침
- U-retrieve: top->down->top 방식으로 retrieval 하면서 generation

## 실험 결과
<img src="/data/papers/medicalgraphrag/result.png" width="600" />

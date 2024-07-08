---
layout: default
---

**(논문 요약) Searching for Best Practices in Retrieval-Augmented Generation** [(Paper)](https://arxiv.org/pdf/2407.01219)

## 핵심 내용
- RAG 의 부분들을 ablation test  
<img src="./data/papers/bestRAG/ablation.png" width="800" />
- Query classification: BERT-base-multilingual 로 다음 15 class classification  
<img src="./data/papers/bestRAG/query_classification.png" width="800" />
- Embedding model 비교  
<img src="./data/papers/bestRAG/embedding_models.png" width="800" />
- Vector database    
<img src="./data/papers/bestRAG/vectordb.png" width="400" />
   - Multiple index types: flexibility in search optimization 
   - Billion-scale: handle large datasets
   - Hybrid search: vector search + traditional keyword search
   - Cloud-native: cloud environments
- Retrieval methods
   - Query Rewriting
   - Query Decomposition
   - Pseudo-documents Generation: query 를 바탕으로 hypothetical document 를 생성하여, text embedding matching 시 사용
- Reranking (ordering)
   - Deep Learning Models
   - TILDE Reranking (이라는 방법...)


## 실험 결과
<img src="./data/papers/bestRAG/result.png" width="800" />

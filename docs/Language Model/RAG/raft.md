---
title: (논문 요약) RAFT; Adapting Language Model to Domain Specific RAG
parent: RAG
---

**(논문 요약) RAFT: Adapting Language Model to Domain Specific RAG** [(Paper)](https://arxiv.org/html/2403.10131v1)

## 핵심 내용
- Overview  
<img src="/data/papers/raft/concept.png" width="800" />
   - negative document 도 같이 주고 필요한 문서를 고르도록 학습.    
<img src="/data/papers/raft/method.png" width="800" />
   - 일부는 관련된 doucment $D^\*$ 를 포함, 일부는 아무 관련없는 문서들을 prompt 로 넣어주고 chain of thought answer ($A^*$) 생성.  
   <img src="/data/papers/raft/data.png" width="400" />
- Result  
  - RAFT 가 RAG 보다 나은 성능 보임.    
<img src="/data/papers/raft/result1.png" width="800" />
  - Chain of Thought 넣으면 성능 상승.  
<img src="/data/papers/raft/result2.png" width="800" />
  - task 에 따라 최적의 P 값은 달라짐.  
<img src="/data/papers/raft/optimal.png" width="800" />

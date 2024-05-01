---
layout: default
---

**(논문 요약) One Embedder, Any Task: Instruction-Finetuned Text Embeddings** [(Paper)](https://arxiv.org/pdf/2212.09741)

## 핵심 내용

- Method: Input text 를 task 에 따라 다르게 embedding  
<img src="./data/papers/instructor-embedding/overview.png" width="400" />
- Contrastive loss 사용. instruction 과 text 를 concat 해서 embedding.
   - score 정의: <img src="./data/papers/instructor-embedding/loss2.png" width="300" />
   - open-domain QA 의 경우, 
      - $I_x$: “Represent the Wikipedia question for retrieving supporting documents; Input: ” 
      - $I_y$: “Represent the Wikipedia document for retrieval; Input: ”   
   - loss: <img src="./data/papers/instructor-embedding/loss1.png" width="200" />  


## 실험
- GTR 모델들에서 추가 학습하여 성능 비교.  
<img src="./data/papers/instructor-embedding/result.png" width="800" />

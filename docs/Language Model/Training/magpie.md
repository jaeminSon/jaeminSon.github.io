---
title: (논문 요약) MAGPIE; Alignment Data Synthesis from Scratch by Prompting Aligned LLMs with Nothing
parent: Training
---

**(논문 요약) MAGPIE: Alignment Data Synthesis from Scratch by Prompting Aligned LLMs with Nothing** [(Paper)](https://arxiv.org/pdf/2406.08464)


## 핵심 내용
- Aligned model (e.g. Llama-instruct) 의 답변 획득
- 그 중 high quality 데이터 선별
<img src="/data/papers/magpie/concept.png" width="800" />
- Metrics for filtering
<img src="/data/papers/magpie/metric.png" width="800" />
  - task category: Llama-3-8B-Instruct 사용
  - input quality: Llama-3-8B-Instruct 사용
  - input difficulty: Llama-3-8B-Instruct 사용
  - instruction similarity: embedded with 'all-mpnet-base-v2' embedding model  
  - quality of response
      - reward model: FsfairX-LLaMA3-RM-v0.1  
      - base model: URIAL  
- Category
<img src="/data/papers/magpie/category.png" width="800" />


## 실험 결과
<img src="/data/papers/magpie/result.png" width="800" />
- T-SNE 로 봤을때 MAGPIE 의 데이터 다양성이 보임  
<img src="/data/papers/magpie/tsne.png" width="500" />

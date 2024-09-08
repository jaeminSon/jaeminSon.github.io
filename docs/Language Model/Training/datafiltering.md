---
title: (논문 요약) Scaling Laws for Data Filtering—Data Curation cannot be Compute Agnostic
parent: Training
---

**(논문 요약) Scaling Laws for Data Filtering—Data Curation cannot be Compute Agnostic** [(Paper)](https://arxiv.org/pdf/2404.07177)

## 핵심 내용
- compute constraint 에 따라 얼마나 low data quality 들을 포함할지 결정할수 있음
   - quality 의 정의
      - LAION filtered data 는 high quality 로 간주
      - CLIP score filtering (CLIP score 와 quality 비례한다고 가정)
      - TMARS filtering (OCR mask 후 CLIP score filtering)  
<img src="/data/papers/datafiltering/concept.png" width="800" />
- 데이터 filter 시, 많이 돌리면 suboptimal 하게 학습  
<img src="/data/papers/datafiltering/training.png" width="400" />
- compute constraint 에 따라 최고 성능을 내는 데이터 조합이 달라짐  
<img src="/data/papers/datafiltering/best.png" width="400" />

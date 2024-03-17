---
layout: default
---

**(논문 요약) DEMYSTIFYING EMBEDDING SPACES USING LARGE LANGUAGE MODELS** [(Paper)](https://arxiv.org/pdf/2310.04475.pdf)

## 핵심 내용
- 목표: LLM 으로 embedding 의 의미를 자연어로 추출.  
<img src="./data/papers/cav/usecase.png" width="800" />
- 방법: word -> domain embedding space 로 변환하는 모델, LLM 이 주어진 생황에서, domain embedding vector 를 LLM 의 embedding vector 로의 mapping 을 학습.   
  - 학습 데이터 생성: LLM 으로 (input, output) 쌍을 모은 뒤, ELM 의 학습 데이터로 사용  
<img src="./data/papers/cav/method.png" width="800" />

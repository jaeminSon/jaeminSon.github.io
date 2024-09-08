---
title: (논문 요약) Gorilla; Large Language Model Connected with Massive APIs
parent: Agents
---

**(논문 요약) Gorilla: Large Language Model Connected with Massive APIs** [(Paper)](https://arxiv.org/pdf/2305.15334.pdf)

## 핵심 내용

- 컨셉: ML API 로 RAG  
<img src="/data/papers/gorilla/overview.png" width="800" />

- API documentation  
  - Huggingface: top 20 models domains. multimodal data(7), CV(8), NLP(12), Audio(5), tabular(2), RL(2).
  - Torch Hub: 전체  
  - TensorFlow Hub v2: 801 개 중 626 개 선택 (설명 적은것 제외)
  - Field: domain, framework, functionality, api_name, api_call, api_arguments, environment_requirements, example_code, performance, description.

## 실험
<img src="/data/papers/gorilla/result.png" width="800" />

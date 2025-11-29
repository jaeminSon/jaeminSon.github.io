---
title: (코드 탐색) vllm
parent: Code Review
---

**(코드 탐색) vllm** [(github)](https://github.com/vllm-project/vllm)

<img src="/data/vllm_code/entrypoints.png" width="800" />

<img src="/data/vllm_code/diagram.png" width="800" />

## Class hierarchy
<img src="/data/vllm_code/hierarchy.png" width="800" />

- VllmConfig class 가 공통 config 로 사용됨.
- 개별 모델의 constructor 를 Model 로 통일.

## Huggingface 모델 로딩 방법
- config.json 에서 정보 취득.
- AutoTokenizer 로 tokenize.
- weight 는 AutoModel 이 아닌 vLLM 코드로 로드.
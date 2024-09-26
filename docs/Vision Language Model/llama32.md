---
title: (모델 요약) Llama 3.2; Revolutionizing edge AI and vision with open, customizable models
parent: Vision Language Model
---

**(모델 요약) Llama 3.2: Revolutionizing edge AI and vision with open, customizable models** [(blog)](https://ai.meta.com/blog/llama-3-2-connect-2024-vision-edge-mobile-devices/)

## Takeaways 요약
- vision LLMs 11B, 90B
- text-only lightweight models (1B and 3B) - edge 나 mobile devices
- context length: 128K tokens
- torchtune 으로 finetuning 가능
- torchchat 으로 local deploy 가능
- On-device Llama Stack distribution: [Pytorch ExecuTorch](https://github.com/pytorch/executorch)
- Single-node distribution: [Ollama](https://github.com/ollama/ollama)

## 기타 내용
- 수집된 데이터뿐 아니라 학습된 모델의 output 도 학습에 사용함.
- 90B 은 gpt-4o-mini 보다 낫고, 11B 는 Claude 3 - Haiku 보다 나음.
- Llama Stack Distribution 의 아키텍쳐도 소개되어있음.
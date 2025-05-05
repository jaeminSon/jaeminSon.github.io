---
title: (블로그 요약) Qwen3; Think Deeper, Act Faster
parent: Foundation Model
---

**(블로그 요약) Qwen3: Think Deeper, Act Faster** [(blog)](https://arxiv.org/pdf/2503.20215)

## 핵심 내용
- Gemini 2.5 pro 에 크게 뒤지지 않는 benchmark 성능

<img src="/data/papers/qwen3/result.png" width="800" />

- MoE architecture 를 추가

<img src="/data/papers/qwen3/arch.png" width="800" />

- pretrain
   - 36T token 사용 (Qwen2.5 에서는 18T)
   - stage 1: 30T tokens (context length of 4K tokens)
   - stage 2: +5T tokens 추가 (STEM, coding, reasoning)
   - stage 3: context length of 32K

- post-train
   - frontier 모델 학습 후, distllation 사용

<img src="/data/papers/qwen3/post-train.png" width="800" />

- 기타
  - Hybrid Thinking Modes (thinking mode, non-thinking mode)
  - Multilingual Support (119 languages and dialects)



---
title: (논문 요약) Phi-4-Mini Technical Report; Compact yet Powerful Multimodal Language Models via Mixture-of-LoRAs
parent: Foundation Model
---

**(논문 요약) Phi-4-Mini Technical Report: Compact yet Powerful Multimodal Language Models via Mixture-of-LoRAs** [(Paper)](https://arxiv.org/pdf/2503.01743)

## 모델
- Chinese, English, French, German, Italian, Japanese, Portuguese, Spanish 지원
- Phi-4-Multimodal: 5.6B (vocabulary size 200K)
   - vision+language
   - vision+speech
   - speech/audio
- Phi-4-Mini: 3.8B (vocabulary size 200K)
- Architecture: 32 decoder-only transformer layers with 128K context length based on LongRoPE
- tokenizer: o200k_base tiktoken

- LoRA adapter
   - vision: 370M parameters
   - speech/audio: 460M parameters

<img src="/data/papers/phi4mini/architecture.png" width="800" />

## 학습
- Vision
   1. projector only
   2. vision encoder + projector (OCR and dense understanding)
   3. vision encoder + projector + llm + lora with single-frame SFT data
   4. projector + llm + lora with multi-frame SFT data

- Speech and Audio
   1. audio encoder + projector 
   2. projector + llm + lora with multi-frame SFT data

- 생성 데이터를 filtering 하여 데이터 quality 를 유지함.

## 성능
- Phi-4-Multimodal 의 vision-language task 성능  
<img src="/data/papers/phi4mini/result_vlm.png" width="800" />

- Phi-4-Mini 의 language 성능  
<img src="/data/papers/phi4mini/result_llm.png" width="800" />

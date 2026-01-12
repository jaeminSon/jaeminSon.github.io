---
title: (모델 요약) VL-JEPA; Joint Embedding Predictive Architecture for Vision-language
parent: Vision Language Model
---

**(모델 요약) VL-JEPA: Joint Embedding Predictive Architecture for Vision-language** [(paper)](https://arxiv.org/pdf/2512.10942)

## 핵심 내용
- vision + query text 을 input 으로 하는 embedding model.
- 모델 구조
   - vision encoder: V-JEPA 2 ViT-L
   - tokenizer and token embedding: Llama-3.2-1B
   - predictor: last 8 Transformer layers of Llama-3.2-1B
   - answer text 를 EmbeddingGemma-300M 로 encoder 한 값을 target 으로 하여 학습.
- Task
   - vision+text → text
   - VQA, classification (option 을 embedding 하여 maximum cosine similarity 를 선택)
   - text → vision retrieval (video encoding 이후 query 에 맞는 clip 찾기)
- Train
   - pretrain
      - image-text data: PLM-Image-Auto, Datacomp, YFCC-100M
      - video-text data: PLM-Video-Auto, Ego4D atomic action descriptions, internal dataset Action100M (consisting captions generated on HowTo100M videos)
      - 1 frame per visual input 학습 100k iterations (batch size 24k)
      - 이어서, 16 frames per input 학습 (image-video pretraining)
      - 24 nodes with 8×NVIDIA H200 GPUs 로 2주
   - SFT
      - PLM data mixture data
         - 25M VQA samples
         - 2.8M captioning samples
         - 1.8M classification samples
      - downsampled pretraining stage data (to avoid catastrophic forgetting)
      - 35k steps, batch size 6k
      - 24 nodes 로 ~2일
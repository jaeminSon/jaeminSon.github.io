---
title: (논문 요약) PaliGemma 2; A Family of Versatile VLMs for Transfer
parent: Vision Language Model
---

**(논문 요약) PaliGemma 2: A Family of Versatile VLMs for Transfer** [(Paper)](https://arxiv.org/pdf/2412.03555)


## 핵심 내용
- PaliGemma2 = ViT + Gemma2  
<img src="/data/papers/paligemma2/arch.png" width="380" />

<img src="/data/papers/paligemma2/param.png" width="800" />

- Input resolutions
   - 224x224
   - 448x448
   - 896x896
- Tasks
   - OCR
   - table structure recognition
   - molecular structure recognition
   - music score recognition
   - long fine-grained captioning
   - radiography report generation
- Location: 각 token 의 index 사용

- 학습
   - Stage 1: 1B multimodal task data, 전체 parameter finetune, image resolution 224x224
   - Stage 2-1: 50M (1B 데이터의 샘플), image resolution 448x448
   - Stage 2-2: 10M (1B 데이터의 샘플), image resolution 896x896
   - Stage 3: stage 1 혹은 2 의 모델을 task 에 맞게 finetune (document-related tasks, long caption generation, medical image understanding)
   - Learning rate
       - 3B: $10^{-5}$
       - 10B, 28B: $5\times 10^{-6}$


## 성능
<img src="/data/papers/paligemma2/result.png" width="800" />

- Resolution, model size 변화에 따른 성능 차이   
<img src="/data/papers/paligemma2/relative_improvement.png" width="800" />

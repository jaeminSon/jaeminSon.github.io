---
title: (논문 요약) InternLM-XComposer-2.5; A Versatile Large Vision Language Model Supporting Long-Contextual Input and Output
parent: Foundation Model
---

**(논문 요약) InternLM-XComposer-2.5: A Versatile Large Vision Language Model Supporting Long-Contextual Input and Output** [(Paper)](https://arxiv.org/pdf/2407.03320)

## 핵심 내용
- 모델
   - vision encoder: CLIP ViT-L-14-490 from IXC2 (increase resolution to 560x560)
   - PLoRA 는 image 쪽만 LoRA 를 쓴다는 뜻  
<img src="/data/papers/internlm/architecture.png" width="400" />
- 데이터: gpt4, claude 등의 모델을 활용하여 alignment 데이터 생성  
<img src="/data/papers/internlm/data1.png" width="800" />
<img src="/data/papers/internlm/data2.png" width="400" />

## 실험 결과
- benchmark 에서 gpt4v 와 비슷  
<img src="/data/papers/internlm/result.png" width="500" />

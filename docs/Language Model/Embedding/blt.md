---
title: (논문 요약) Byte Latent Transformer; Patches Scale Better Than Tokens
parent: Embedding
---

**(논문 요약) Byte Latent Transformer: Patches Scale Better Than Tokens** [(Paper)](https://arxiv.org/pdf/2412.09871)

## 핵심 내용
- *Tokenizer-free architecture that learns from raw byte data*  
<img src="/data/papers/blt/concept.png" width="800" />

- Encoder, Decoder  
<img src="/data/papers/blt/encoder.png" width="800" />

- Entropy Patching: *use entropy estimates to derive patch boundaries*
   - *train a small byte-level auto-regressive language model on the training data*  
   - global thershold 와 relative threshold 사용  
    <img src="/data/papers/blt/condition.png" width="400" />
   - entropy plot 예시   
<img src="/data/papers/blt/entropy.png" width="800" />

## 실험
- 적은 param, dimension 으로 성능을 냄.  
<img src="/data/papers/blt/result.png" width="800" />
<img src="/data/papers/blt/result2.png" width="800" />


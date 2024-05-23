---
layout: default
---

**(논문 요약) Chameleon: Mixed-Modal Early-Fusion Foundation Models** [(Paper)](https://arxiv.org/pdf/2405.09818)


## 핵심 내용
- ~10T 정도 pretrain.
<img src="./data/papers/chameleon/concept.png" width="800" />

## Tokenizer
- Image Tokenization:a 512 × 512 image into 1024 discrete tokens from a codebook of size 8192
- Tokenizer: (trained by author) BPE tokenizer with a vocabulary size of 65,536, which includes the 8192 image codebook tokens

## Pretraining
- stage 1 (80% of training): 2.9 trillion text-only + 1.5 trillion text-image (512x512) tokens + 400 billion tokens of interleaved text and image data
- stage 2 (20% of training): 50% of data in stage 1 + higher quality datasets (a filtered subset of instruction tuning sets)

## Numerical Stability
<img src="./data/papers/chameleon/training_curves.png" width="800" />  
- re-ordering of the norms in Chameleon-34B  
<img src="./data/papers/chameleon/34b.png" width="400" />
- architecture
<img src="./data/papers/chameleon/architecture.png" width="800" />
- z-loss definition:   <img src="./data/papers/chameleon/z_loss.png" width="400" />

## 필요 자원
<img src="./data/papers/chameleon/resource.png" width="300" />
<img src="./data/papers/chameleon/supervised_training_data.png" width="400" />

## 실험 결과
<img src="./data/papers/chameleon/result0.png" width="800" />  
<img src="./data/papers/chameleon/result1.png" width="800" />

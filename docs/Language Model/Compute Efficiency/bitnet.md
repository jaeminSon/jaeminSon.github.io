---
title: (논문 요약) BitNet
parent: Compute Efficiency
---

**(논문 요약) BitNet** 

[BitNet: Scaling 1-bit Transformers for Large Language Models](https://arxiv.org/pdf/2310.11453)
[The Era of 1-bit LLMs: All Large Language Models are in 1.58 Bits](https://arxiv.org/pdf/2402.17764)
[BitNet b1.58 2B4T Technical Report](https://arxiv.org/pdf/2504.12285)
[(repo)](https://github.com/microsoft/BitNet)

## 핵심 내용
- {-1,0,1} weight matrix 로 muliplication 가속화.  
<img src="/data/papers/bitnet/concept.png" width="800" />
- Weight quantization formula  
<img src="/data/papers/bitnet/weight.png" width="500" />

## 실험 결과
<img src="/data/papers/bitnet/result.png" width="800" />

## BitNet 2B 모델
- BitLinear 사용하여 pre-training, SFT, and DPO.

<img src="/data/papers/bitnet/comparison.png" width="800" />

<img src="/data/papers/bitnet/comparison2.png" width="800" />

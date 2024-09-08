---
title: (논문 요약) Layer-Condensed KV Cache for Efficient Inference of Large Language Models
parent: Compute Efficiency
---

**[(논문 요약) Layer-Condensed KV Cache for Efficient Inference of Large Language Models](https://arxiv.org/pdf/2405.10637)**

## 핵심 내용
- 몇몇 layer 에서는 standard attention, 그 외 layer 에서는 top layer 에서만 Key, Value 사용.  
   - save memory consumption by caching fewer layers
   - omit the key-value computation and save key-value parameters
   <img src="/data/papers/lckv/concept.png" width="600" />
   
- 학습
   - perform $n$ iterations of bottom-up transformer computation on all tokens in parallel
   - in each iteration, pair the queries of all layers with KVs of the top layer from the previous iteration
   - compute the cross entropy loss only after the last iteration   
   <img src="/data/papers/lckv/parallel_training.png" width="600" />


## 실험 결과
- throughput 비교 (w==n_standard_attention_layers)  
   <img src="/data/papers/lckv/throughput.png" width="800" />
- scratch 학습 with TinyLlama on a 100B subset of the SlimPajama dataset    
<img src="/data/papers/lckv/train_result.png" width="800" />
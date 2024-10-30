---
title: (논문 요약) TOKEN MERGING; YOUR VIT BUT FASTER
parent: Compute Efficiency
---

**(논문 요약) TOKEN MERGING: YOUR VIT BUT FASTER** [(Paper)](https://arxiv.org/pdf/2210.09461)

## 핵심 내용
- Channel 개수를 점차적으로 줄여 throughput 을 높임.
   - 2× throughput for ViT-L@512 and ViT-H@518 models on image
   - 2.2× throughput for ViT-L on video

- Image patch 를 merge. 
   - Set A 는 홀수번째, Set B 는 짝수번째 token 포함.  
<img src="/data/papers/tome/concept.png" width="800" />


## Result  
- Pruning 보다 Merging 이 더 나음.  
<img src="/data/papers/tome/comparison.png" width="800" />

- Image classification on ImageNet-1k  
<img src="/data/papers/tome/result.png" width="800" />

- Video classification on Kinetics-400   
<img src="/data/papers/tome/result2.png" width="800" />
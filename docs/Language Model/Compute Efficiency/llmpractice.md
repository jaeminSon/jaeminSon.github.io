---
title: (논문 요약) LLM Pruning and Distillation in Practice; The Minitron Approach
parent: Compute Efficiency
---

**(논문 요약) LLM Pruning and Distillation in Practice: The Minitron Approach** [(Paper)](https://arxiv.org/pdf/2408.11796)

## 핵심 내용
- pruning, distillation 으로 Llama 3.1 8B -> 4B, Mistral NeMo 12B -> 8B  
<img src="/data/papers/llmpractice/concept.png" width="400" />
- teacher correction: distill 할 데이터 (private) 로 학습 (data distribution 맞추기 위해)   
<img src="/data/papers/llmpractice/teachercorrection.png" width="400" />


## 실험 결과
- width pruning 성능이 depth pruning 성능보다 나음  
<img src="/data/papers/llmpractice/widthdepth.png" width="400" />
- 단, width pruning 의 경우, throughput 은 좀 떨어짐  
<img src="/data/papers/llmpractice/widthdepththroughput.png" width="400" />

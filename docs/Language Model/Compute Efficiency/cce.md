---
title: (논문 요약) CUT YOUR LOSSES IN LARGE-VOCABULARY LANGUAGE MODELS
parent: Compute Efficiency
---

**(논문 요약) CUT YOUR LOSSES IN LARGE-VOCABULARY LANGUAGE MODELS** [(Paper)](https://arxiv.org/pdf/2411.09009)


## 핵심 내용
- log softmax 식을 분리  
<img src="/data/papers/cce/logsoftmax1.png" width="600" /> 일때,  
<img src="/data/papers/cce/logsoftmax2.png" width="350" /> 
<img src="/data/papers/cce/logsoftmax3.png" width="400" />


- 병렬 처리, back-propagation 시 thresholding 을 통한 속도 개선 및 메모리 개선.  
<img src="/data/papers/cce/concept.png" width="800" />

- 알고리즘
<img src="/data/papers/cce/algorithm1.png" width="800" />
<img src="/data/papers/cce/algorithm2.png" width="800" />
<img src="/data/papers/cce/algorithm3.png" width="800" />


## 실험 결과
<img src="/data/papers/cce/result.png" width="800" />
<img src="/data/papers/cce/result1.png" width="800" />

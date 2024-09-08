---
title: (논문 요약) RecurrentGemma; Moving Past Transformers for Efficient Open Language Models
parent: Compute Efficiency
---

**(논문 요약) RecurrentGemma: Moving Past Transformers for Efficient Open Language Models** [(Paper)](https://storage.googleapis.com/deepmind-media/gemma/recurrentgemma-report.pdf)

## 핵심 내용

- 컨셉: [Griffin architecture](https://arxiv.org/pdf/2402.19427.pdf) 를 기본으로 따르되, input embeddings 에 constant 곱해줌.
   - Gemma: Key, Value 가 sequence grows 에 비례해서 증가함.  
   - RecurrentGemma: 2K 이상되는 경우, 제한됨.  


## 실험
- 성능은 gemma 와 비슷하고 throughput 도 큰 차이 없음  
<img src="/data/papers/recurrentgemma/result.png" width="600" />
- token generation 은 RecurrentGemma 가 빠르지만, prompt 를 읽는데는 조금 더 시간이 걸림.  
<img src="/data/papers/recurrentgemma/speed.png" width="600" />

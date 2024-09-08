---
title: (논문 요약) Generative Representational Instruction Tuning
parent: Training
---

**(논문 요약) Generative Representational Instruction Tuning** [(Paper)](https://arxiv.org/pdf/2402.09906.pdf)


## 핵심 내용
- Retrieval 과 generation 둘 다 학습.
<img src="/data/papers/gen_rep_inst/method.png" width="800" />  
<img src="/data/papers/gen_rep_inst/method2.png" width="800" />  
- Contrastive loss ($\sigma$: mean-pooling 이후 cosine similarity, q:query, d:document, $\tau$: temperature hyperparam)  
<img src="/data/papers/gen_rep_inst/loss1.png" width="450" />  
- Next-token prediction loss  
<img src="/data/papers/gen_rep_inst/loss2.png" width="400" />  


- 결과: embedding, generation 둘 다 잘하게 할 수 있음.  
<img src="/data/papers/gen_rep_inst/result.png" width="800" />

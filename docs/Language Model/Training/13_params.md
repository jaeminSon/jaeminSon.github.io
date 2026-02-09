---
title: (논문 요약) Learning to Reason in 13 Parameters
parent: Training
---

**(논문 요약) Learning to Reason in 13 Parameters** [(Paper)](https://arxiv.org/pdf/2602.04118)

## 핵심 내용
- LoRA: $W'=W+AB$ 
    - $A\in\mathbb{R}^{d\times r}$
    - $B\in\mathbb{R}^{r\times k}$
- LoRA-XS: $W'=W+U\Sigma R V^T$
    - truncated SVD
       - $U\in\mathbb{R}^{d\times r}$
       - $\Sigma\in\mathbb{R}^{r\times r}$
       - $V\in\mathbb{R}^{k\times r}$ 
    - $R\in\mathbb{R}^{r\times r}$ are trainable parameters.
- **Tiny-LoRA**: $W'=W+U\Sigma \Bigl(\sum_{i=1}^u v_iP_i \Bigl) V^T$
    - truncated SVD
       - $U\in\mathbb{R}^{d\times r}$
       - $\Sigma\in\mathbb{R}^{r\times r}$
       - $V\in\mathbb{R}^{k\times r}$ 
    - $P_i\in\mathbb{R}^{r\times r}$ are fixed random matrices
    - $v_i$ are only parameters
- Table 2 에서 보듯, 적은 숫자의 parameter tuning 으로 finetuning 가능.
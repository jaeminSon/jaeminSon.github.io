---
title: (논문 요약) Granite Code Models; A Family of Open Foundation Models for Code Intelligence
parent: Code and Math
---

**(논문 요약) Granite Code Models: A Family of Open Foundation Models for Code Intelligence** [(Paper)](https://arxiv.org/pdf/2405.04324v1)


## 핵심 내용
- 116 programming languages 로 학습. 3B~34B params.
- 모델 아키텍쳐
<img src="/data/papers/granite/architecture.png" width="800" />

- Pretraining
   - Phase 1 (code only training) up to 4T tokens
   - Phase 2 (code + language training with high-quality publicly available data) ~500B tokens
   - next token prediction + fill in the middle prediction

- Instruction Tuning (with public data)
   - Code Commits Dataset: CommitPackFT, a filtered version of full CommitPack dataset across 92 programming languages
   - Math Datasets: MathInstruct and MetaMathQA (Yu et al., 2023);
   - Code Instruction Datasets: Glaive-Code-Assistant-v3, Self-OSS-Instruct-SC2, Glaive-Function-Calling-v2, NL2SQL11
   - Language Instruction Datasets: HelpSteer, Platypus12

- 학습시 depth 작은 것을 이어 붙여서 initialize.
<img src="/data/papers/granite/depthupscaling.png" width="800" />


## 실험 결과
<img src="/data/papers/granite/result.png" width="800" />

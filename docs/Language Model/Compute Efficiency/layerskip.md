---
title: (모델 요약) LayerSkip: Enabling Early Exit Inference and
parent: Compute Efficiency
---

**(모델 요약) Self-Speculative Decoding**[(paper)](https://arxiv.org/pdf/2404.16710)

## 핵심 내용
- Motivation
  - 초기 layer 의 prediction 은 최종 prediction 과 연관이 없음.
  - 후기 layer 부터 최종 prediction 과 같은 prediction 결과를 갖음.
  - 중간 layer 에서는 prediction 값이 왔다갔다함.  
<img src="/data/papers/layerskip/motivation.png" width="800" />

- 방법: LM head 가 어떤 layer 의 output 이 오더라도 정답을 출력하도록 학습.
   - *Training using Layer Dropout & Early Exit Loss*
   - *Inference using Early Exit*
   - *Verification and Correction using Speculative Decoding*  
<img src="/data/papers/layerskip/method.png" width="800" />

## 실험 결과 
<img src="/data/papers/layerskip/result.png" width="800" />
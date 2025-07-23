---
title: (논문 요약) One Token to Fool LLM-as-a-Judge
parent: Analysis
---

**(논문 요약) One Token to Fool LLM-as-a-Judge** [(paper)](https://arxiv.org/pdf/2507.08794)

## 핵심 내용
- false posivie rewards
   - non-word symbols (e.g.,":" or ".")
   - reasoning openers
        - "Thought process:"
        - "Let’s solve this problem step by step."

<img src="/data/papers/fool/result.png" width="800" />  

- Qwen2.5-7B-Instruct 모델에 SFT -> Master-RM
   - 학습데이터: [160k public data](https://arxiv.org/pdf/2503.23829) + FP 방지 목적 aug-data
   - FP 방지 목적 aug-data: GPT-4o-mini 답변의 첫번째 문장만 가져와서 'No' 로 레이블 (20k)
        - 예시: "To solve the problem, we need to find the mode, median, and average of the donation amounts from the students."

<img src="/data/papers/fool/fp.png" width="800" />  
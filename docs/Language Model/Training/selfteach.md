---
title: (논문 요약) Teaching Models to Teach Themselves; Reasoning at the Edge of Learnability
parent: Training
---

**(논문 요약) Teaching Models to Teach Themselves: Reasoning at the Edge of Learnability** [(Paper)](https://arxiv.org/pdf/2601.18778)

## 핵심 내용
- 학습
   - Outer loop: teacher (student 과 같은 모델로 시작) 가 query, answer 를 생성하는데, student 의 (ground trugh data 에서의) reward 를 높이도록 학습.
   - Inner loop: teacher 가 만든 문제를 잘 풀도록 학습
   - teacher 의 answer 가 맞는지 여부는 검증하지 않음
- Model: Llama-3.2-3B-Instruct
- 효과 미미함.
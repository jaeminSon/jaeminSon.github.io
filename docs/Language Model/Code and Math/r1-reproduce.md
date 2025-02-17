---
title: (블로그 요약) R1-reproduce
parent: Code and Math
---

**(블로그 요약) R1-reproduce**

## DeepScaleR-1.5B-Preview [(notion)](https://pretty-radio-b75.notion.site/DeepScaleR-Surpassing-O1-Preview-with-a-1-5B-Model-by-Scaling-RL-19681902c1468005bed8ca303013a4e2)
- R1 의 방법론을 Deepseek-R1-Distilled-Qwen-1.5B 에 적용.
- token length 를 점차 늘려가며 학습 (8K -> 16K -> 24K)
- 8K 학습시, A100 8개, 16K 와 24K 학습시 A100 32개 사용.
- 학습 데이터
   - AIME (1984-2023)
   - AMC (-2023)
   - pipeline
      - gemini-1.5-pro-002 로 데이터 생성.
      - embedding 모델 활용하여 중복 데이터 제거.
      - sympy 로 변환 안되는 데이터 제거.
      - 총 학습 데이터: 대략 40K (problem, answer) pairs
   - reward
      - 1: latex, sympy 체크 통과
      - 0: 틀린 답, 혹은 format 안맞는 경우 (e.g. token missing)


## SimpleRL-Reason [(notion)](https://hkust-nlp.notion.site/simplerl-reason)
- Qwen2.5-7B 에 RL 적용.
- 자원 관련 내용 없음.
- 데이터: 8K queries * 8 samples
- 학습: PPO
- reward
   - 1: 정답을 올바른 format 으로 출력한 경우
   - -0.5: 오답을 낸 경우
   - -1: 끝까지 답을 못낸 경우 (e.g. format 오류)
- 실험
   - setting 1: base 모델에서 바로 RL 돌려서 SFT 에 비해 나은 generalization 달성.
   - setting 2: SFT 이후 RL 적용하여, setting 1 보다 나은 성능 달성.

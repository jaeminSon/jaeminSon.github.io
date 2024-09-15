---
title: (잡생각) statistical models
parent: Thoughts
---

**(잡생각) statistical models**

### 기능: 특정 대상을 근사
- [Big World Hypothesis](https://openreview.net/pdf?id=Sv7DazuCn8)
    - *For many learning problems, the world is multiple orders of magnitude larger than the agent.*
    - *The agent neither fully perceives the state of the world nor can it learn the correct value or optimal action for each state.*
    - *It has to rely on approximate solutions to achieve its goals.*
    
### 쓸모: task 수행
- task 정의: current state 에서 desired state 로의 변환.
    - Recognition: input -> decision
    - Image/Video generation: input -> image/video
    - LLM
        - 번역: 언어 A 로 쓰여진 문장 -> 언어 B 로 쓰여진 문장
        - 코딩: 자연어 문장 -> 코드
        - 수학 풀이: 주어진 가정 -> 결과
        - 요약: 원본 텍스트 -> 요약된 텍스트
        - Q&A: 질문 -> 답

        
### 생각
- statistical models 는 state 가 존재하는 공간을 더 단순한 공간으로 근사하며, state 의 transition rule 을 내포하고 있음.
   - 사용자가 원하지 않는 output 을 만들어 내는 경우, 지속적으로 monitor & align 필요 (community 단위로 관리되는 것이 효율적일듯함).
   - state 의 개수가 적은 경우, sLLM 을 통한 자연어 -> state mapping + rule-based state transition 으로 효율적인 연산이 가능할듯함.
- LLM 의 Chain of Thought 은 human-readable step-by-step state transition 이라고 생각할 수 있음.
   - CoT 를 학습에 적극적으로 사용하면 보다 align 된 모델이 될 수 있을듯함.
   
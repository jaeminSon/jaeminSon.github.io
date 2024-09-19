---
title: (잡생각) statistical models
parent: Thoughts
---

**(잡생각) statistical models**

### statistical models 의 주요 기능은 특정 대상을 근사하는 것임.
- [Big World Hypothesis](https://openreview.net/pdf?id=Sv7DazuCn8)
   - *For many learning problems, the world is multiple orders of magnitude larger than the agent.*
   - *The agent neither fully perceives the state of the world nor can it learn the correct value or optimal action for each state.*
   - *It has to rely on approximate solutions to achieve its goals.*
- statistical models 의 input 공간, output 공간을 'state of the world' 라고 생각할 수 있음.
   - 이 경우, image, text 등, 데이터가 존재하는 공간이 real world 가 됨.
   - Big World Hypothesis 에서 state of the world 를 근사한 것 처럼, state of images, state of texts 를 근사하게 됨.
    
### 인간에게 쓸모는 task 수행함에 있음.
- task 는 'current state 에서 desired state 로의 변환'으로 정의할수 있음.
   - 인식: input -> decision
   - 영상/비디오 생성: input -> image/video
   - 자연어 처리
        - 번역: 언어 A 로 쓰여진 문장 -> 언어 B 로 쓰여진 문장
        - 코딩: 자연어 문장 -> 코드
        - 수학 풀이: 주어진 가정 -> 결과
        - 요약: 원본 텍스트 -> 요약된 텍스트
        - Q&A: 질문 -> 답
   - LLM 의 Chain of Thought 은 human-readable step-by-step state transition 이라고 생각할 수 있음.

### statistical models 은 2가지 작업을 한다고 생각할수 있음.
- (1) state 들을 근사.
   - embedding 을 통해 구현 (word embedding, image embedding).
- (2) 근사된 state 들의 변환. 
   - 근사된 state 들이 network 의 forward 과정에서 다른 공간으로 mapping 되며, 최종적으로 output space 로 mapping 됨.

### 즉, statistical model 의 spec 은, (1) 어떤 것을 대상으로 하고, (2) 이를 어떻게 변환해야 할지 가 결정함.
- 사람의 표정을 classify 하도록 학습된 모델은 개 vs 고양이 구분 불가능.
- vision foundation model, language foundation model 들은 모든 task 에서 잘하려는 것이 목표
   - target object 와, task 의 범위를 좁히는 경우보다 문제가 어려움 (수학만 잘하기 vs. 전과목 다 잘하기).
- "이 정도 task 에는 이 정도 모델 학습이면 충분함" 같은 방법이 있으면 유용할 듯.
   - binary search 방식으로 upper layer 들 일부만 finetuning 하는 방식?

### deploy 된 이후에, 'state' 혹은, 'state 들의 변환' 이 변할수 있음. 
- 원하는 대로 동작하고 있는지 체크할수 있는 metric 필요.
- metric 이 악화되는 경우, 이를 개선할수 있도록 align 필요 (추가 학습의 필요성).
- 여러 명이 같은 모델을 사용하면서, 동시에 align 해나가면 개인당 시간/노력을 줄일수 있을 것임 (e.g. community efforts).

### state 의 개수가 적고 명시적인 경우, mapping 을 담당하는 perception 모델 + rule-based state transition 으로 효율적인 연산이 가능할듯함.
- sLLM 을 통한 자연어 -> state mapping 이후 특정 조건을 만족하는지 등을 검증하는 시스템.
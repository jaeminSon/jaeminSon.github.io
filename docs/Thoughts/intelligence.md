---
title: (잡생각) Intelligence
parent: Thoughts
---

**(잡생각) Intelligence**

### LLM 의 Intelligence Quotient
- [GPT4 의 verbal IQ 가 155 (상위 0.1%) 라는 썰...](https://www.scientificamerican.com/article/i-gave-chatgpt-an-iq-test-heres-what-i-discovered/)
- 아예 GPT4 이상부터는 인간의 IQ 를 능가했다고 생각하는 사람도... 
[![Models in Sep 2024](https://s10251.pcdn.co/wp-content/uploads/2024/09/2024-Alan-D-Thompson-AI-Models-IQ-MMLU-GPQA-Tetris-Rev-3.png)](https://lifearchitect.ai/mapping/)
- 하지만 현존 최강 (2024-09-19 기준) GPT-o1 에겐, CUDA 설치는 너무나도 어려움.
[![failed to install cuda](https://preview.redd.it/its-over-v0-4yyvqbogmzod1.jpeg?auto=webp&s=7decbb8dd1ba85f4faf0c331a2bcf7526ae03374)](https://www.reddit.com/r/ChatGPT/comments/1fhei0j/its_over/)

### LLM 이 높은 Intelligence Quotient 를 달성하는 것은 어렵지 않음.
- 높은 IQ 는 주어진 문제에서 정답을 많이 골라 높은 percentile 를 달성하면 됨.
- IQ test 의 (문제, 정답) 은 문제 출제자 (인간 전체의 부분집합) 이 만든 것으로, 개수가 유한하고, pattern 도 유한함.
- 이 (문제, 정답) pattern 을 잘 근사한 인간 혹은 LLM 은 높은 IQ 를 보일 것임.

### 사실, IQ test 의 (문제, 정답) pattern 은 높은 IQ 가 어떤 의미를 가지는 지를 정의함.
- 높은 IQ != 높은 지능
- 높은 IQ == IQ test 문제 출제자(들)의 사고 pattern 을 잘 알고 있음
- 따라서, 인간이던 기계이던 간에, IQ 는 높지만 쉬운 질문에도 답변 못할수 있음.

### Web-scale 의 데이터로 학습된 LLM 은 IQ test 의 (문제, 정답) pattern 도 학습되었을수 있음.
- IQ test 의 문제들은 추론 능력도 측정하고 있으므로, reasoning 능력을 강화한 모델은 높은 IQ 달성 가능. (하지만 역시 CUDA 설치는 어려워~)
- 극단적으로는, fine-tuning 을 통해 IQ test 의 (문제, 정답) pattern 을 적극적으로 학습하여 높은 점수를 받을수도 있을 것임. (이 모델은 유용할까?)

### Intelligence 를 여러 domain 으로 세분화 할수 있음.
- 운동, 음악, 대인관계 등 IQ test 에서 다루지 않는 Intelligence 의 영역도 존재.

### 만약, Intelligence 를 "특정 domain 의 (문제, 정답) pattern 을 근사하는 능력" 으로 정의하면, 잘 학습된 LLM이 인간보다 정답을 빠르게 도출함으로써, 해당 domain 에서 뛰어난 Intelligence 를 보이는 것은 당연함.
- 주어진 resource 안에서, target domain 을 정의하고, 이에 특화된 모델을 만들수 있을 것임.
- 정답이 명확한 domain 에서 특화된 LLM 이 전문가 수준의 조언을 해준다면, 대중들에게 쓸모가 있을듯함.

### 생각해보면, 역사상 모든 test 의 (문제, 정답) 들은 인간들에 의해 고안됨.
- 특정 분야의 test 에 능한 것은 알려진 문제들에 대한 정답을 빠르게 찾을수 있다는 것이지, open question 을 잘 푼다는 의미는 아님.
   - 학점이 좋다고 연구를 잘하는것은 아님.
- LLM 이 open question 도 풀수 있을까?
   - 인간과 비슷하게 발전한다면 가능할것 같음 (시도->검증->학습후, 더 나은 시도 -> ... 의 무한반복)
- 단, 이 경우에도 문제는 인간이 만들고, 인간이 관심있어 하는 것임. 
- 그렇지 않으면, LLM 은 인간에게 더 이상 유용하지 않게될 것임.

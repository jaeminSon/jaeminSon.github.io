---
title: (잡생각) Intelligence
parent: Thoughts
---

**(잡생각) Intelligence**

### LLM 의 Intelligence Quotient
- [GPT4 의 verbal IQ 측정치는 155 (상위 0.1%) 였음.](https://www.scientificamerican.com/article/i-gave-chatgpt-an-iq-test-heres-what-i-discovered/)
- GPT4 이상부터는 인간의 IQ 를 능가했다고 주장하는 내용.
[![Models in Sep 2024](https://s10251.pcdn.co/wp-content/uploads/2024/09/2024-Alan-D-Thompson-AI-Models-IQ-MMLU-GPQA-Tetris-Rev-3.png)](https://lifearchitect.ai/mapping/)
- 하지만 CUDA 설치 질문에 GPT-o1 는 백기를 흔듬.
[![failed to install cuda](https://preview.redd.it/its-over-v0-4yyvqbogmzod1.jpeg?auto=webp&s=7decbb8dd1ba85f4faf0c331a2bcf7526ae03374)](https://www.reddit.com/r/ChatGPT/comments/1fhei0j/its_over/)

### LLM 이 높은 Intelligence Quotient 를 달성하는 것은 어렵지 않음.
- IQ 는 주어진 문제를 맞춘 개수의 percentile 을 수치화 한 값임. 
- IQ test 의 (문제, 정답) 은 인간이 만들어왔고, 개수가 유한하므로, pattern 도 유한함.
- 즉, IQ test 의 (문제, 정답) pattern 을 잘 근사하면 높은 IQ 를 달성할수 있음.
- 거꾸로, IQ test 에서 (문제, 정답) 의 pattern 은 높은 지능이 어떤 의미를 가지는 지를 정의함.
   - 인간이던 기계이던, IQ 는 높지만 간단한 질문에 답변을 못하더라도 모순적이지 않음.
- Web-scale 의 데이터로 학습된 LLM 은 이 (문제, 정답) pattern 도 인식하고 있을수 있음.
   - IQ test 의 문제들은 추론 능력도 측정하고 있으므로, reasoning 능력을 강화한 모델은 높은 IQ 달성 가능.
- 극단적으로는, fine-tuning 을 통해 IQ test 의 (문제, 정답) pattern 을 적극적으로 학습할수도 있을 것임.

### Intelligence 를 여러 domain 으로 세분화 할수 있음.
- 운동, 음악, 대인관계 등 IQ test 에서 다루지 않는 Intelligence 의 영역도 존재.

### Intelligence 를 "특정 domain 의 (문제, 정답) pattern 을 근사하는 능력" 으로 정의하면, 잘 학습된 LLM이 인간보다 정답을 빠르게 도출함으로써, 해당 domain 에서 뛰어난 Intelligence 를 보이는 것은 당연함.
- 주어진 resource 안에서, target domain 을 정의하고, 이에 특화된 모델을 만들수 있을 것임.

### 역사상 모든 test 의 (문제, 정답) 들은 인간에 의해 고안됨.
- 정답을 모르는 open question 의 경우에도 LLM 이 도움을 줄수도 있을 것임.
- 단, 이 경우에도 문제는 인간이 만들고, 인간이 관심있어 하는 것임. 
- 그렇지 않으면, LLM 은 인간에게 더 이상 유용하지 않게될 것임.

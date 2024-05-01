---
layout: default
---

**(논문 요약) Textbooks Are All You Need** [(Paper)](https://arxiv.org/pdf/2306.11644)

## 핵심 내용

- Method: 
   - pretrain on “textbook quality” data (synthetically generated (with GPT-3.5) + filtered from web sources)
   - finetune on “textbook-exercise-like” data  
<img src="./data/papers/textbook/result1.png" width="600" />

- Data:
   - A subset of The Stack and StackOverflow filtered by a random forest classifier   
<img src="./data/papers/textbook/filter.png" width="600" />
   - A synthetic textbook dataset consisting of <1B tokens of GPT-3.5 generated Python textbooks (constraints on topics and target audience)   
<img src="./data/papers/textbook/synth1.png" width="600" />
   - A small synthetic exercises dataset consisting of ∼180M tokens of Python exercises and solutions (diversifying the function names with GPT-3.5)
<img src="./data/papers/textbook/synth2.png" width="600" />


## 실험
<img src="./data/papers/textbook/result2.png" width="800" />

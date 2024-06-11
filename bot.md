---
layout: default
---

**(논문 요약) Buffer of Thoughts: Thought-Augmented Reasoning with Large Language Models** [(Paper)](https://arxiv.org/pdf/2406.04271)


## 핵심 내용
- Thought Buffer (템플릿) 를 retrieve 하여 generation 시 사용
- 풀린 문제에서 Thought Buffer 를 생성하여 필요시 추가  
<img src="./data/papers/bot/concept.png" width="800" />
   - problem-distiller  
   <img src="./data/papers/bot/distill.png" width="600" />
   - reasoner  
    <img src="./data/papers/bot/reasoner.png" width="600" />
   - thought template 예시   
   <img src="./data/papers/bot/tought-template-1.png" width="600" />
   <img src="./data/papers/bot/tought-template-2.png" width="600" />
   <img src="./data/papers/bot/tought-template-3.png" width="600" />
   - template 추가
      - 문제를 풀고 나서 템플릿 생성
      <img src="./data/papers/bot/template_distill.png" width="600" />
      - 기존의 템플릿들과 비교하여 embedding similarity 가 낮으면 (0.5~0.7 미만) 새로운 템플릿으로 추가 


- 결과
<img src="./data/papers/bot/result.png" width="800" />

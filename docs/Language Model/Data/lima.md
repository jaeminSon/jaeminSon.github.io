---
title: (논문 요약) LIMA; Less Is More for Alignment
parent: Data
---

**(논문 요약) LIMA: Less Is More for Alignment** [(paper)](https://arxiv.org/pdf/2305.11206)

## 핵심 내용
- 필요한 지식은 pretrain 때 습득, postrain 시 SFT 는 instruction 이 학습되는 것일수 있다는 주장
- 1000개의 prompts and responses pair 로 Llama 65B 추가 학습

- 데이터   

<img src="/data/papers/lima/data.png" width="800" />  


- Stack Exchange: 75 STEM (including programming, math, physics, etc.) and 99 other (English, cooking, travel, and more)
   - 높은 점수를 받은 question 선택
   - 해당 question 의 top answer 중, 1200~4096 자인 경우 선택
   - link, image, html tag 삭제하고 code, list 만 남김
- wikiHow: 카테고리를 랜덤하게 뽑은 뒤, "This article...", "The following answer..." 과 같은 상용어구 삭제하고 link, image 삭제함.
- Pushshift Reddit: AskReddit, WritingPrompts 에서 most upvoted posts. AskReddit 은 title 에서만 데이터를 가져옴.


## 실험 결과
- 52,000 개 데이터로 SFT 한 Alpaca 보다 나은 성능

<img src="/data/papers/lima/result.png" width="800" />
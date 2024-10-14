---
title: (논문 요약) GSM-Symbolic; Understanding the Limitations of Mathematical Reasoning in Large Language Models
parent: Analysis
---

**(논문 요약) GSM-Symbolic: Understanding the Limitations of Mathematical Reasoning in Large Language Models** [(paper)](https://arxiv.org/pdf/2410.05229)

## 핵심 내용
- GSM-8K 데이터의 template 을 만든 뒤, 변수를 바꿔서 문제 생성
<img src="/data/papers/gsm/concept.png" width="800" />  

- 1세트는 총 100개 데이터 (100 templates 에서 1 개씩 생성), 총 50세트로 성능 측정
<img src="/data/papers/gsm/result.png" width="800" />  

- 이름과 숫자를 바꿔도 성능 떨어짐.
<img src="/data/papers/gsm/name_number.png" width="800" />  

- clause 숫자를 늘리면 성능 떨어짐.
<img src="/data/papers/gsm/clause.png" width="800" />  

- 엉뚱한 정보를 넣으면 성능 떨어짐.  
<img src="/data/papers/gsm/noop1.png" width="800" />  
<img src="/data/papers/gsm/noop2.png" width="800" />  
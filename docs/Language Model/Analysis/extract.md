---
title: (논문 요약) Extracting books from production language models
parent: Analysis
---

**(논문 요약) Extracting books from production language models** [(Paper)](https://arxiv.org/pdf/2601.02671)

## 핵심 내용
- 책에 나오는 문장을 완성하도록 query 한 뒤, gt 와 비슷한 경우, 'continue' 라고 query 하여 책 내용을 추출함.
- 추출된 문장들은 punctuation 이나 space 가 일부 상이하였음.
    - merge, filter 를 통해 trivial difference 를 무시하고 책 내용이 얼마나 복기되는지 계산.

<img src="/data/papers/extract/fig1.png" width="800" />  

<img src="/data/papers/extract/fig2.png" width="800" />  

<img src="/data/papers/extract/fig3.png" width="800" />  

<img src="/data/papers/extract/result.png" width="800" />  

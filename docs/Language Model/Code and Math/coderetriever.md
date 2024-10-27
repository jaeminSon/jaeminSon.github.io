---
title: (논문 요약) CodeRetriever; Large-scale Contrastive Pre-training for Code Search
parent: Code and Math
---

**(논문 요약) CodeRetriever: Large-scale Contrastive Pre-training for Code Search** [(Paper)](https://aclanthology.org/2022.emnlp-main.187.pdf) [(Code)](https://github.com/microsoft/AR2/tree/main/CodeRetriever)


## 핵심 내용
- *function-level code semantic representations through large-scale code-text contrastive pre-training*  
<img src="/data/papers/coderetriever/concept.png" width="400" />

- Architecture
   - Code-Bert 와 같은 architecture
   - GraphCodeBERT weight 로 initialize
   - text encoder 와 code encoder 의 weight share

- 학습
   - contrastive loss
   - Positive pairs
      - Code-Document: code and its corresponding document
      - Code-Comment: pure code and the corresponding in-line comments (use code parser (tree-sitter) and collect 1.9 million code-comment pairs)
      - Code-Code
         - SimCSE 모델의 NameMatcher, DocMatcher 로 코드 grouping.
         - DocMatcher 로 binary classifier 학습 후, grouping 된 코드들을 inference 한 뒤, threshold 이상만 사용.   
<img src="/data/papers/coderetriever/codecode.png" width="800" />


## 실험 결과
<img src="/data/papers/coderetriever/result.png" width="800" />

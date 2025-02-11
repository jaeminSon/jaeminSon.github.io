---
title: (논문 요약) Gold-medalist Performance in Solving Olympiad Geometry with AlphaGeometry2
parent: Code and Math
---

**(논문 요약) Gold-medalist Performance in Solving Olympiad Geometry with AlphaGeometry2** [(Paper)](https://arxiv.org/pdf/2502.03544)

## 핵심 내용
- Expanded Domain Language
    - locus-type theorems
    - linear equations
    - nonconstructive problem statements: Gemini 에 fewshot 활용, 자연어 -> formal language 변환
- Stronger and faster Symbolic Engine
    - handling of double points (double point: a point on a curve where two branches of the curve intersect)
    - a faster implementation in C++
- Multiple search trees with knowledge sharing
    - classic LM search: 각 노드당 LM 이 1개 auxiliary point 생성
    - LM multiple aux search: 각 노드당 LM 이 복수개 auxiliary points 생성
    - LM operator search: 임의의 점 생성 (AB=CD 이고 AEF 가 직선위에 있는 점 A)
<img src="/data/papers/alphageometry2/search.png" width="800" />
- Enhanced Language Models
    - Training from scratch with a custom tokenizer in the domain specific language (Alphageometry 1 setup)
    - Fine-tuning already pre-trained custom math specialized Gemini models in natural language
    - Multimodal training from scratch with a diagram of the given geometry problem
- Larger and more diverse dataset   
<img src="/data/papers/alphageometry2/data.png" width="800" />

## 실험 결과
<img src="/data/papers/alphageometry2/result.png" width="800" />

---
title: (개념 요약) Tokenization
parent: Training
---

**(개념 요약) Tokenization** [(tutorial)](https://huggingface.co/learn/nlp-course/en/chapter6/5)

## Corpus: (hug, 10), (pug, 5), (pun, 12), (bun, 4), (hugs, 5)

# BPE (Byte-Pair Encoding)
### Tokenization
- Merge rules (예시: hu+g->hug) 를 순차적으로 적용.

### Merge rules 생성: frequency 가 가장 높은 pair 를 vocab 에 추가시켜나감.
- 1st Iter
   - Vocabulary: [b, g, h, n, p, s, u, **ug**]
   - Corpus: (h+ug, 10), (p+ug, 5), (p+u+n, 12), (b+u+n, 4), (h+ug+s, 5)
- 2nd Iter
   - Vocabulary: [b, g, h, n, p, s, u, ug, **un**]
   - Corpus: (h+ug, 10), (p+ug, 5), (p+un, 12), (b+un, 4), (h+ug+s, 5)
- 3rd Iter
   - Vocabulary: [b, g, h, n, p, s, u, ug, un, **hug**]
   - Corpus: (hug, 10), (p+ug, 5), (p+un, 12), (b+un, 4), (hug+s, 5)

# Unigram
### Tokenization: 확률값이 높은 tokenization 조합을 찾음.
- pug 는 p+ug 혹은 pu+g 로 tokenize (값이 같은 경우, 일관된 룰로 고름)
   - p+u+g : 0.000389
   - p+ug : 0.0022676
   - pu+g : 0.0022676 

### vocab 생성: 모든 substring 들을 vocab 으로 설정해두고, loss 를 적게 올리는 substring 을 지워나감.
- substring 의 frequency: (h, 15) (u, 36) (g, 20) (hu, 15) (ug, 20) (p, 17) (pu, 17) (n, 16) (un, 16) (b, 4) (bu, 4) (s, 5) (hug, 15) (gs, 5) (ugs, 5)

- 각 단어의 tokenization
   - hug (score 0.071428)
   - pu+g 혹은 p+ug (score 0.007710)
   - pu+n 혹은 p+un (score 0.006168)
   - bu+n 혹은 b+un(score 0.001451)
   - hug+s (score 0.001701)
- loss: 10 * (-log(0.071428)) + 5 * (-log(0.007710)) + 12 * (-log(0.006168)) + 4 * (-log(0.001451)) + 5 * (-log(0.001701)) = 169.8
- 1st Iter
   - [h, u, g, hu, ug, p, pu, n, un, b, bu, s, hug, gs, ugs]
- 2nd Iter
   - [h, u, g, hu, ug, p, ~~pu~~, n, un, b, bu, s, hug, gs, ugs]

# WordPiece
### Tokenization
- Merge rules (예시: hu+g->hug) 를 순차적으로 적용.

### Merge rules 생성: (pair 의 frequency) / (첫번째 토큰 frequency \* 두번째 토큰 frequency) 가 최대가 되는 pair 추가해 나감.
- 1st Iter
   - Vocabulary: Vocabulary: [b, h, p, ##g, ##n, ##s, ##u, **##gs**]
   - Corpus: (h ##u ##g, 10), (p ##u ##g, 5), (p ##u ##n, 12), (b ##u ##n, 4), (h ##u ##gs, 5)
- 2nd Iter
   - Vocabulary: [b, h, p, ##g, ##n, ##s, ##u, ##gs, **hu**]
   - Corpus: (hu ##g, 10), (p ##u ##g, 5), (p ##u ##n, 12), (b ##u ##n, 4), (hu ##gs, 5)
- 3rd Iter
   - Vocabulary: [b, h, p, ##g, ##n, ##s, ##u, ##gs, hu, **hug**]
   - Corpus: (hug, 10), (p ##u ##g, 5), (p ##u ##n, 12), (b ##u ##n, 4), (hu ##gs, 5)

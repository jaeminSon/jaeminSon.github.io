---
title: (논문 요약) Learning to Discover at Test Time
parent: Training
---

**(논문 요약) Learning to Discover at Test Time** [(Paper)](https://arxiv.org/pdf/2601.16175)

## 핵심 내용
- 주어진 task 에서 reward 를 최대화 하도록 모델을 학습시켜나감.
- reuse: PUCT-based heuristic ($Q(s)+P(s)\cdot\frac{\sqrt{1+T}}{1 + n(s)}$)
    - $Q(s)$: maximum reward among states generated when the initial state was $s$ (or reward if not selected yet)
    - $P(s)$: proportional to s’s rank in the buffer sorted by rewar
    - $n(s)$: number of times $s$ or its descendants have been expande
    - $T$: total number of expansions
- 1 step per iteration
- Batch size 512
   - 8 groups with 64 rollouts each
   - each group shares the same context and initial state
- LoRA rank: 32

<img src="/data/papers/testtime/algorithm.png" width="800" />

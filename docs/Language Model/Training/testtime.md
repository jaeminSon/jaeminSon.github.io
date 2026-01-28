---
title: (논문 요약) Learning to Discover at Test Time
parent: Training
---

**(논문 요약) Learning to Discover at Test Time** [(Paper)](https://arxiv.org/pdf/2601.16175)

## 핵심 내용
- 주어진 task 에서 reward 를 최대화 하도록 모델을 학습시켜나감.
- reuse: PUCT-based heuristic
    - $Q(s)+P(s)\cdot\frac{\sqrt{1+T}}{1 + n(s)}$
    - $Q(s)$: maximum reward among states generated when the initial state was $s$ (or reward if not selected yet)
    - $P(s)$: proportional to $s$'s rank in the buffer sorted by reward
    - $n(s)$: number of times $s$ or its descendants have been expande
    - $T$: total number of expansions
- 학습 
   - 1 step per iteration
   - Batch size 512
      - 8 groups with 64 rollouts each
      - each group shares the same context and initial state
   - LoRA rank: 32

<img src="/data/papers/testtime/algorithm.png" width="800" />

- 메모
   - expected reward 에 log 를 씌워 gradient 에 normalizer 가 나타나게 함.
   - Appendix A
       - beta 가 0 인 경우, exponential tilting (distribution reweight) 없어짐.
       - $N$ 개 rollout 이 있을때, 각 rollout 을 uniform distribution 의 시행으로 보고, tilting 이후 KL 이 너무 크지 않게 $\beta$ 를 찾음 (bisection search)
       - Advantage 를 계산할때 reward 의 max 값을 빼서 exponent 의 값을 0 이하로 제한함.
       - Advantage 의 분모를 계산할때 Leave-One-Out 를 두어, peak 가 존재할때 더 부각되도록 함.
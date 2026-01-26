---
title: (논문 요약) Dr. Zero; Self-Evolving Search Agents without Training Data
parent: Agents
---

**(논문 요약) Dr. Zero: Self-Evolving Search Agents without Training Data** [(Paper)](https://arxiv.org/pdf/2601.07055)


## 핵심 내용
- Search Agents 를 학습 시, proposer 와 solver 를 evolve 시키면서 모델 개선.
   - search tool 만 사용 가능한 환경.
   - proposer: generate diverse questions (and answers)
      - hop 개수 별로 group 을 나누어 advantage 를 계산하여 학습 (hop-grouped relative policy optimization (HRPO))
   - solver: multi-turn search problems 해결 (GRPO 로 학습)
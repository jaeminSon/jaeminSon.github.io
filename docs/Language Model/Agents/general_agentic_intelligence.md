---
title: (논문 요약) Towards General Agentic Intelligence via Environment Scaling
parent: Agents
---

**(논문 요약) Towards General Agentic Intelligence via Environment Scaling** [(Paper)](https://arxiv.org/pdf/2509.13311)

## 핵심 내용
- API Pool
   - 총 ~30,000 APIs (ToolBench, API-Gen, internal tool repository)
   - low quality API 걸러냄
   - API descriptions 재작성
- Tool dependency graph 및 domains
   - node: tool
   - edge: 두 parameter 의 vector representation 의 cosine similarity 가 threshold 이상이면 edge 생성
   - domain: Louvin community detection 으로 grouping
   - 총 >1000 domains
- 각 domain 별로 database structure 통합
- Human-Agent interplay
   - User-intent 가 주어지고 user 와 agent 가 interaction 하면서 해결하는 sequence 데이터 수집
- 학습: SFT

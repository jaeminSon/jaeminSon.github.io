---
title: (논문 요약) Tongyi DeepResearch; A New Era of Open-Source AI Researchers
parent: Agents
---

**(논문 요약) Tongyi DeepResearch: A New Era of Open-Source AI Researchers** [(blog)](https://tongyi-agent.github.io/blog/introducing-tongyi-deep-research/)


## 핵심 내용
- OpenAI 의 Deep Research 와 benchmark 에서 비슷한 성능
- inference 시 사용하는 tool
   - file
   - python
   - google scholar
   - google search
   - website visit
- 학습 
    - Agentic CPT → Agentic SFT → Agentic RL 순서
    - RL 학습시 negative sample 걸러냄 (token length 로 끊긴 답변)
    - 환경: offline Wikipedia database and a custom tool suite
- 데이터
    - Contiunal Pretrainng Data: knowledge graphs and tables 을 바탕으로 생성
    - SFT data: ReAct and IterResearch 로 생성 후, rejecteion sampling
    
---
title: (논문 요약) SWE-AGENT; AGENT-COMPUTER INTERFACES ENABLE AUTOMATED SOFTWARE ENGINEERING
parent: Code and Math
---

**(논문 요약) SWE-AGENT: AGENT-COMPUTER INTERFACES ENABLE AUTOMATED SOFTWARE ENGINEERING** [(Paper)](https://swe-agent.com/paper.pdf)

## 핵심 내용
- agent-computer interface (ACI) 가 LM agent 성능에 지대한 영향을 미침.
<img src="/data/papers/swe-agent/concept.png" width="800" />
- ACI 예시 및 trajectory  
<img src="/data/papers/swe-agent/example.png" width="800" />  
<img src="/data/papers/swe-agent/trajectory.png" width="200" />
- fileviewer, edit  
<img src="/data/papers/swe-agent/view_edit.png" width="800" />  
- addtional commands  
<img src="/data/papers/swe-agent/addtional_commands.png" width="800" />
- thought, action 포맷에 안맞으면 다시 입력받음.  
<img src="/data/papers/swe-agent/guardrail.png" width="800" />
- agent 가 잘 동작하도록 summarized search 를 만들어 줌.  
<img src="/data/papers/swe-agent/search_method.png" width="800" />
- edit with linting 으로 syntax 에러 없이 코드 수정.  
<img src="/data/papers/swe-agent/edit.png" width="800" />

## 실험 결과
<img src="/data/papers/swe-agent/result.png" width="800" />

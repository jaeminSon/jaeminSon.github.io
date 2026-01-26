---
title: (논문 요약) LLM-in-Sandbox Elicits General Agentic Intelligence
parent: Agents
---

**(논문 요약) LLM-in-Sandbox Elicits General Agentic Intelligence** [(Paper)](https://arxiv.org/pdf/2601.16206)


## 핵심 내용
- execute_bash, str_replace_editor, submit 의 tool 이 정의된 sandbox 환경에서 ReAct framework
   - reason, tool call, observation 를 history 에 쌓아가며 최종 답안 생성.
   - 최대 $T$ 번 tool call
   - 중간에 submit 이 call 된 경우 return

## 실험 결과
- Mathematics, Physics Chemistry, Biomedicine, Long-Context, Instruction Follow 측정
- 큰 모델 (Claude-Sonnet-4.5-Think, GPT-5, DeepSeek-V3.2-Thinking, MiniMax-M2, Kimi-K2-Thinking, Qwen3-Coder-30B-A3B) 에서 성능 향상
- 작은 모델 (Qwen3-4B-Instruct-2507) 은 성능 하락 

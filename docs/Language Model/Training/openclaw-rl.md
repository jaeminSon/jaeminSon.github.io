---
title: (논문 요약) OpenClaw-RL; Train Any Agent Simply by Talking
parent: Training
---

**(논문 요약) OpenClaw-RL: Train Any Agent Simply by Talking** [(Paper)](https://arxiv.org/pdf/2603.10165)


## 핵심 내용
- OpenClaw-RL infrastructure
  - Personal Agents (conversational, single-user) hosted on personal devices
  - General Agents (terminal, GUI, SWE, and tool-call agents), hosted on cloud services
  - The collected samples flow into an RL server built on the asynchronous slime framework
      1. the environment server
      2. Process Reward Models / Judge for reward computation
      3. Megatron for policy training
      4. SGLang for policy serving
- Reward
  - PRM output reward: {+1, −1, 0}
  - Hindsight-Guided On-Policy Distillation (OPD)
    - $s_{enhanced}$: $s_t\oplus$ hint
      - hint: $PRM(a_t\|s_{t+1})=+1$ 인 경우, PRM 이 $s_{t+1}$ 을 1~3 sentences 로 summarize
    - advantage: $\log \pi_{teacher}(a_t\|s_{enhanced}) - \log \pi_{\theta}(a_t\|s_t)$
    
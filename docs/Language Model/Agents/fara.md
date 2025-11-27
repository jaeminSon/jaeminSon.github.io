---
title: (논문 요약) Fara-7B; An Efficient Agentic Model for Computer Use
parent: Agents
---

**(논문 요약) Fara-7B: An Efficient Agentic Model for Computer Use** [(Paper)](https://www.microsoft.com/en-us/research/wp-content/uploads/2025/11/Fara-7B-An-Efficient-Agentic-Model-for-Computer-Use.pdf)

## 핵심 내용
- FaraGen: synthetic data generation system for multi-step web tasks
- Targeted URL Task Proposal (전체의 28%)
    - starts from carefully chosen URLs drawn from categories (e.g. e-commerce, entertainment, restaurants, flights).
    - An LLM iteratively refines a realistic, user-relevant task that matches what a human would try to do on that page.
    - Examples
       - booking tickets from a Fandango movie page
       - purchasing a specific item with constraints on a retailer site

- Agent URL Exploration (전체의 67%) 
   - samples random URLs uniformly from the web and lets a multimodal agent explore the site autonomously
   - The agent perceives screenshots (and may consult accessibility trees), proposes an initial task based on the page, attempts to execute it.
   - Iteratively refines both the task and next actions as it discovers what is actually feasible on the site.
   - The resulting tasks tend to be simpler on average than targeted ones, but this pathway is crucial for distributional breadth and for learning robust, general navigation behaviors.

- Exemplar Task Proposal (전체의 5%)
   - Starting from a bank of seed tasks, the system decomposes each into a template capturing intent, entities, and arguments.
   - It then systematically varies the entities and arguments (e.g. switching the retailer, item type, or constraints).
   - This expands coverage within skill families, boosting diversity.

- Qwen2.5-VL-7B 로 SFT 하여 GPT-4o 보다 나은 computer use agents 성능 달성.
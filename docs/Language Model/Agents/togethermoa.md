---
title: (논문 요약) Together MoA — collective intelligence of open-source models pushing the frontier of LLM capabilities
parent: Agents
---

**(논문 요약) Together MoA — collective intelligence of open-source models pushing the frontier of LLM capabilities** [(Paper)](https://arxiv.org/pdf/2406.04692)


## 핵심 내용
- Mixture of Agents  
   - Proposers: 답변 생성 ($A_{1,1}, A_{1,2}, A_{1,3}$)
   - Aggregators: 답변들 요약
<img src="/data/papers/togethermoa/concept.png" width="800" />

- aggregator prompt  
<img src="/data/papers/togethermoa/aggregator.png" width="800" />


## 실험 결과
<img src="/data/papers/togethermoa/result.png" width="800" />
<img src="/data/papers/togethermoa/result2.png" width="500" />
- 다른 모델의 output 을 같이 쓰면 성능이 올라감  
<img src="/data/papers/togethermoa/other_inputs.png" width="400" />
- Proposer 늘리면 성능 증가  
<img src="/data/papers/togethermoa/ablation.png" width="400" />
- 모델 ablation  
<img src="/data/papers/togethermoa/ablation2.png" width="400" />
- cost-effectiveness
<img src="/data/papers/togethermoa/result.png" width="800" />

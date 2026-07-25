---
title: (잡생각) biological neurons vs. electronic neurons
parent: Thoughts
---

**(잡생각) biological neurons vs. electronic neurons**

- 개별 종 안에서 뇌의 파라미터를 유추할수 있는 물리량 (뉴런 숫자의 어림값,뇌의 무게 등)
   - 편차는 bounded 되어있음 (e.g. 인간 남성 기준 뇌의 무게는 1.2kg~1.5kg)
   - 무게의 차이가 파라미터 개수의 차이로 치환된다면 20%~25% 차이를 보인다고 볼 수 있음.
   - architecture 상 크게 다르지 않을 것 (오히려 생명체들의 뇌 구조는 상당부분 닮아있음)

- 파라미터의 숫자가 수십배 차이나지 않는다면 결국 학습 데이터가 뇌의 동작에 영향을 미치는 가장 큰 factor 로 생각됨.
   - 총체적인 경험이 감각기관에서 전기적 신호로 치환되어 뇌의 뉴런을 '조각'한다고 생각할 수 있음.
   - 결국 무엇을 학습하느냐에 따라 뇌가 '특화'된다고 생각할 수 있음.
   - 동일하게 주어지는 시간에 어떤 tech tree 를 타느냐의 문제.

- biological neurons 는 electronic neurons 와 달리 학습 데이터 (i.e. 경험)이 동일하게 download 될 수 없다.
   - 개개인이 모두 다르며, 쌍둥이라도 총체적 경험은 개인마다 고유함.
   - junk data 로 학습하면 biological 이던 electronic 이던 junk data 의 distribution 을 모방하게 되어, junk neurons 가 될 운명인듯함.
   - 무엇이 junk 이고 무엇이 non-junk 인가?
      - 모든 인류 문화에서 공통적으로 가르치려는 것이 존재하는 듯함.
         - 도전정신, 마인드컨트롤, 절제력, 배려심, 공동체의식 등
         - 이는 모두 인류 혹은 개인의 생존에 도움이 될만한 정신적 가치들임.

- 교육의 역할
   - pretrain 은 도움이 필요 없음 (그대로 암기하면 됨)
   - 현재의 주입식 교육은 task-specific sft
      - 수학 과학을 제외하면 내용 자체의 진위성이 의심스러운 부분도 존재 (e.g. 역사)
      - 과연 필요할까?
      - 시험이외에 다른 task 에 도움이 되지 않음.
      - overfit 되면 general intelligence 가 낮아질 risk 도 존재.
   - llm 학습때와 같이 pretrain 후 rl 만으로도 충분할 수도 있을듯함.
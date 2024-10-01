---
title: Chapter 19 - Risk Management
parent: Quantitative Finance with Python
---

**(책 요약) Quantitative Finance with Python (Chapter 19 - Risk Management)**


### Extreme Loss, Stress Tests & Scenario Analysis
- Historical Stress: 과거 crash 재현
- Scenario Defined By Shocking Underlying Macro Variable
   - Oil price increases by 50%
   - A +3 standard deviation move in the EURUSD exchange rate
   - The VIX Index increases to 40
   - US Treasury Curve Steepens with Long End Yields Increasing by 100 bps
- Monte Carlo Simulation
- Out-of-sample (validation data) 로 VaR 을 계산한 뒤, threshold 로 설정한 값과 비슷한 값이 나오는지 확인하여, 유용성을 측정해볼수 있음.
---
title: 자산 배분
parent: Economy
---

**자산 배분 [(repo)](https://github.com/jaeminSon/invest/blob/main)**

- 장기적으로 우상향 하는 종목들은 **경기 침체 국면이 아닌 시기**에 사면, x3 가 x1 보다 안떨이짐.
<img src="/data/economy/leverage_2010.png" width="800" />

- TQQQ, SOXL, SPXL 및 현금을 자산 배분
   - window size 를 정함 (e.g. 20일)
   - 개별 종목에 대해서
       - 위 window size 로 percent change 구함
       - 현재 window 에서 percentage change 가 상위 몇 percentile 에 해당하는지 구함 (이를 win_rate 이라고 정의)
       - kelly criterion 으로 net_profit=1, net_loss=1 로 두고 배팅 크기 구함.
       - **구해진 kelly criterion 을 $p$ 라고 할때, $1-p$ 만큼 weight 할당 (오르면 팔고, 떨어지면 산다)**

- Backtest [(all figures)](https://github.com/jaeminSon/invest/tree/main/backtest)  
<img src="/data/economy/backtest_from_20160101.png" width="800" />

    
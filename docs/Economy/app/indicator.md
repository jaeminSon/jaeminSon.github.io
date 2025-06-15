---
title: 0. 가격 지표
parent: ETF 가격 지표앱 개발
---

## 지표
- $r_n=\frac{p_n}{ma_n^w}$
   - $p_n$: closing price at $n$th date
   - $ma_n^w= \frac{1}{w} \sum_{i=0}^{w-1} p_{n - i}$: moving average with window size $w$

## 해석
- $r_n$ 증가: closing price 가 exponential 보다 빠르게 상승
- $r_n$ 감소: closing price 가 exponential 보다 느리게 상승하거나 하락
- $r_n\\rightarrow 0$: closing price 가 0 으로 감
- $r_n\\rightarrow \infty$: closing price 가 Super-Exponentially $\infty$ 에 다가감

## 실제 주식에 대한 분포
- s&p 500 주식 및 주요 ETF (s&p500, nasdaq, semiconductor)
- 극단으로 갈수록 출현빈도가 낮아지는 경향성
- 1 근처에 값이 모여있는 경향성

<img src="/data/economy/20.png" width="300" /> <img src="/data/economy/50.png" width="300" />

<img src="/data/economy/100.png" width="300" /><img src="/data/economy/200.png" width="300" />

---
title: 8. 1차 업데이트
parent: ETF 가격 지표앱 개발
---

## 기획 순서
- 기능 구상
- UI 구상


## 주요 ETF 선별
- S&P, Nasdaq, Dow, Russell
- 그외 sector
- S&P500
- IBIT, GEV, SOLV, SW 는 데이터 포인트가 200개 미만이어서 제외


## 구현 순서
- backend
- frontend (web)
- frontend (android)


## 시행착오
- s&p 500 을 표시하려 했는데 생각보다 많아서 보기도 어려움.
- 동시에 query 가 몰리는 경우, backend 가 잘 처리하지 못함.
- 사용자가 늘어나는 경우, scalability 고려 필요함.
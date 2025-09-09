---
title: 8. 업데이트
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
- 국가별 ETF 추가
- Sector 별 추가


## 구현 순서
- backend
- frontend (web)
- frontend (android)
- nginx 추가 ([Client] → HTTPS → [Caddy] → HTTP (localhost:9000) → [NGINX] → Gunicorn (localhost:8000))

## scalability
- 종목 1개씩 query 이던 것을 페이지 별로 나눔 (동시 처리 user 숫자: ~1명 -> ~100명)
- 쿼리 숫자를 줄이는 것이 크게 작용하는 듯함.

## 시행착오
- s&p 500 을 표시하려 했는데 생각보다 많아서 보기 어려움.
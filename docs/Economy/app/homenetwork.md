---
title: 6. 집 네트워크에 연결하기
parent: ETF 가격 지표앱 개발
---

## 가정용 네트워크 서버 설정
- router admin panel 접속 (e.g. http://192.168.1.1)
- Frontend, Backend 서버 각각 portforwarding (http:80, https:443)
- DDNS 설정
   - Internet Service Provider 는 임의로 (router 재부팅, DHCP lease 만기 등) 외부 IP 를 변경함.
   - 특정 hostname 과 변경되는 IP 를 연동시켜줄 필요가 있음.
   - [No-IP](https://www.noip.com/) 사용.
- Frontend 의 query 를 DDNS 를 통해 받아옴.
- Macbook (Monterey 12.7.5) 은 노트북을 닫으면 hosting 안됨.

## HTTPS 사용
- Caddy 설치하여 Caddyfile 작성.

```
sudo caddy run --config ./Caddyfile --adapter caddyfile
```
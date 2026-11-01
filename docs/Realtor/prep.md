---
title: 0.준비
parent: Realtor
---

### Day 0
- 당근으로 입문책 구매 (1월 30일)
   - 해커스 공인중개사 2차 부동산 공법 신의 노트 (고상철)
   - 해커스 공인중개사 2차 부동산 공법 강의 노트 (한종민)
   - 해커스 공인중개사 2차 중개사법 일당백 노트 (황정선)
   - 해커스 공인중개사 2차 세법 기적의 필기 노트 (강성규)
   - 해커스 공인중개사 기초 입문서 1,2차 + 민법
- 2차의 공법과 1차의 민법이 어렵다고 함.
- 2016년~2025년 기출 문제 다운로드 
    - [(download at qnet)](https://www.q-net.or.kr/cst003.do?id=cst00309&gSite=L&gId=08)
    - [(2016~2025 기출)](https://drive.google.com/file/d/11G5CUI3brCHvgWYccqs8WkcSDBIuq8v_/view?usp=sharing)
- pdf 하나로 묶는 python code

```
import os
from pypdf import PdfWriter

writer = PdfWriter()

for fname in os.listdir("."):
    if ".pdf" in fname:
        writer.append(fname)

with open("merged.pdf", "wb") as f:
    writer.write(f)
```

- 정답 및 해설은 검색하여 적절히 찾아냄.

### Important Dates
- 신청: 2026년 8월 3일 ~ 2026년 8월 7일
- 시험일: 2026년 10월 31일
- 지참물: 정리된 내용 및 오답노트 프린트

### 공부 방법
- 입문서 읽으면서 기출 풀이 (10개 년도중 1개 random sample)
    - 입문서 내용 정리하면서 변경 및 추가 (입문서가 outdated)
- 나머지 9개년도 기출 풀면서 내용 변경 및 추가
- 민법, 공법: 유투브에서 기본 개념 강의
- 중개사, 공시법, 세법: 입문 강의
- 주요 내용 정리
- 10개년도 기출 풀이 및 오답노트 작성
- 2번째로 10개년도 기출 풀이 및 오답노트 작성
- 3번째로 최근 5개년도 기출 풀이 및 오답노트 작성
- 4번째로 최근 3개년도 기출 풀이 및 오답노트 작성
- 정리된 내용 및 오답노트 복습

### 도움된 사이트
- 기출 해설: 세상의 모든 기출 tistory
- 민법: 도원결의 공인중개사 - TRS에듀
- 공법: 박문각 이석기 공법 (유투브 채널)
- 중개사: 에듀윌 임선정 (에듀윌 채널)
- 세법: 에듀윌 한영규 (에듀윌 채널)
- 공시법: 에듀윌 김민석 (에듀윌 채널)
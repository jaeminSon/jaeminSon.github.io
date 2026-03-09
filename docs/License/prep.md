---
title: 준비
parent: Realtor
---

### Day 0
- 당근으로 입문책 구매
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

### 공부 방법
- 입문서 읽으면서 기출 풀이
- 기타 교재 일독하면서 내용 변경 및 추가
- 기출 풀면서 내용 변경 및 추가
- 정리된 내용 복습
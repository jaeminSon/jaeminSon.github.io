---
title: 공인중개사
parent: License
---

**공인중개사**

### Day 0
- 당근으로 입문책 구매 (없는 과목들은 나중에 필요시 구매 예정)
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


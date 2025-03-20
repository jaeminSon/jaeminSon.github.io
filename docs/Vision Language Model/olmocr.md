---
title: (논문 요약) olmOCR; Unlocking Trillions of Tokens in PDFs with Vision Language Models
parent: Foundation Model
---

**(논문 요약) olmOCR: Unlocking Trillions of Tokens in PDFs with Vision Language Models** [(paper)](https://arxiv.org/pdf/2502.18443)

## 핵심 내용
- PDF 의 metadata 를 prompt 에 같이 넣어서 OCR 학습.
<img src="/data/papers/olmocr/method.png" width="800" />

- 학습 데이터
   - Poppler 로 PDF -> images
   - PyPDF 로 text blocks, images, positions 정보 추출
   - GPT4o 에 key-value 추출 query

<img src="/data/papers/olmocr/data.png" width="800" />

- 학습: Qwen2-VL-7B-Instruct 부터 SFT (H100 8개)

## 성능
<img src="/data/papers/olmocr/result.png" width="800" />
---
title: 5. 클라우드
parent: 저평가 알람앱 개발
---

[(참고 블로그)](https://brunch.co.kr/@topasvga/168)

## google cloud
- 3개월 무료여서 사용하기로 결정

## 서비스 비교 (Gemini 답변 요약)
- Cloud Run: stateless, ephemeral, single threaded (비싸다는 blog 가 있어서 채택하지 않음 [(blog)](https://dev.to/code42cate/serverless-is-a-scam-5fc0))
- Cloud Run Functions: stateless, designed for event-driven workloads and functions
- GKE: flexible, advanced features (service meshes, custom resource definitions, advanced deployments)
- App Engine: stateless, a fully managed platform for hosting web applications, simplifying development and infrastructure management.



## Security
- private IP + IAM-based authentication
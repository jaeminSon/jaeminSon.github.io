---
title: (블로그 요약) Universe; Scale Real-World Verifiable Environments to Millions
parent: Code and Math
---

**(블로그 요약) Universe: Scale Real-World Verifiable Environments to Millions** [(paper)](https://arxiv.org/pdf/2602.02361)


## 핵심 내용
- Builder agent
   - code base 에서 bug fix.
   - evaluation.sh 생성.
- Hacking Detector
   - evaluation.sh 가 제대로 된 것인지 검토.
- Verifier agent
   - buggy branch 에서는 테스트 실패, fixed branch 에서는 테스트 통과 하는지 체크.
- 데이터셋
   - train: ~1M high-quality PRs (filtered from 33.3 M pull requests in 2021–2025 of GitHub)
       - high quality: PRs: linked with issue(s) without excessive file changes
   - benchmark: 320 pull requests randomly sampled from GitHub
- 모델
   - Qwen-Next-80B-A3B
   - Qwen3-Max-Thinking
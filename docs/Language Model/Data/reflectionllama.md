---
title: (모델 요약) Reflection Llama 70B
parent: Data
---

**(모델 요약) Reflection Llama 70B** [(Model)](https://huggingface.co/mattshumer/Reflection-Llama-3.1-70B)

## 핵심 내용
- Llama-3.1 70B Instruct 에서 reflection data 로 finetune
- inference 과정
    - ```<thinking>``` tag 로 생각 나열
    - 잘못된 thinking process 발견시 ```<reflection>``` tag 안에서 이유 설명
    - 모든 수정이 끝난뒤 ```<output>``` tag 안에 최종결과 출력

## 실험 결과
- 일부 벤치마크에서 Llama-3.1 405B 능가  
<img src="/data/papers/reflectionllama/result.png" width="800" />
---
title: (논문 요약) Meta Large Language Model Compiler; Foundation Models of Compiler Optimization
parent: Code and Math
---

**(논문 요약) Meta Large Language Model Compiler: Foundation Models of Compiler Optimization** [(Paper)](https://scontent-ssn1-1.xx.fbcdn.net/v/t39.2365-6/448997590_1496256481254967_2304975057370160015_n.pdf?_nc_cat=106&ccb=1-7&_nc_sid=3c67a6&_nc_ohc=4Yn8V9DFdbsQ7kNvgGBDHmR&_nc_ht=scontent-ssn1-1.xx&oh=00_AYCnQcA9n90K6n0GEQ7Ob6bVSf6TIozgwed4uSazW_iAOg&oe=6684630D)

## 핵심 내용
- Compiler emulation: pass list (optimization arguments) 넣고 opt 실행한 결과를 학습  
<img src="/data/papers/metacompiler/compiler_emulation.png" width="800" />

- Flag tuning: Unoptimized intermediate representation (IR) 을 prompt 로 주고 best pass list 를 출력하도록 학습
   - pass list 를 여러개 넣고 돌린 뒤, 가장 좋은 것을 고름  
<img src="/data/papers/metacompiler/flagtuning.png" width="800" />
- Disassembly finetuning: assembly code 로 부터 intermediate representations (IR) 복원
<img src="/data/papers/metacompiler/disassemblyfinetuning.png" width="800" />

## 학습
- Flowchart  
  - pretrain 이후, compiler emulation, flag tuning, disassembly fine-tuning 진행  
<img src="/data/papers/metacompiler/train_flow.png" width="800" />
- Data  
<img src="/data/papers/metacompiler/data.png" width="600" />


## 실험결과
- -Oz (size optimization pass list) 보다 나음  
<img src="/data/papers/metacompiler/result.png" width="800" />

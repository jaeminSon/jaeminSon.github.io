---
title: (논문 요약) DINOv3
parent: Computer Vision
---

**(논문 요약) DINOv3** [(Paper)](https://scontent-ssn1-1.xx.fbcdn.net/v/t39.2365-6/531524719_1692810264763997_2330122477414087224_n.pdf?_nc_cat=103&ccb=1-7&_nc_sid=3c67a6&_nc_ohc=8hfozYrFftoQ7kNvwEfn0NE&_nc_oc=AdkynJ3QY7GWMHDIuLAYFu_BOvNyKhIRjxfV4-1wnuTDO8eyrURoHz-zF6ulKmF-yXE&_nc_zt=14&_nc_ht=scontent-ssn1-1.xx&_nc_gid=5yLnCT4zBnezPLcdQPaxyA&oh=00_AfVtATLS3voD2MTZYkGMLgNrmgCwoUHb2OQ0_UxR0nMtmQ&oe=68A8FD68)

## 핵심 내용
- 데이터
    - raw 17B images
    - hierarchical k-means 적용하여 filtering (200M, 8M, 800k, 100k, 25k 개의 5-level)
    - 1,689 M (named LVD-1689M) 
- 7B param

    <img src="/data/papers/dinov3/arch.png" width="800" />   

- objectives
    - image-level (DINO loss)
    - patch-level latent reconstruction (iBOT loss)
    - Koleo regularizer: encourage the features within a batch to spread uniformly in the space
    - Gram anchoring: old, new Gram matrix 간 Frobenius norm
        - 학습이 진행될수록 global DINO loss 가 우세해짐.
        - Gram anchoring 도입하여 이어서 학습시, iBOT loss 가 감소함.

## 결과

- downstream task 성능이 개선됨. 

<img src="/data/papers/dinov3/result.png" width="800" />   

- PCA 결과 object boundary 가 타 모델보다 선명함. 

<img src="/data/papers/dinov3/pca.png" width="800" />   
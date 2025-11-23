---
title: (논문 요약) SAM 3D; 3Dfy Anything in Images
parent: Computer Vision
---

**(논문 요약) SAM 3D: 3Dfy Anything in Images** [(Paper)](https://arxiv.org/pdf/2511.16624)

## 핵심 내용
- Architecture
   - shape token: 4096 tokens with $d=1024$ to represent a grid with resolution $64^3$.
   - layout token: 1 token for each rotation $R$, translation $t$, and scale $s$ ($d=1024$)

<img src="/data/papers/sam3d/arch.png" width="800" />

- 데이터
   - ISO-3DO (Isolated 3D Objects): 다양한 viewpoints 에서 single objects. 
      - Built from meshes (e.g., Objaverse-XL and licensed assets), producing image–shape–texture triplets. 
      - Purpose: teach strong priors for geometry/texture in a clean, object-centric setting.
   - RP-3DO (Render–Paste 3D Objects): real images 에서 synthetic 3D objects 생성.
        - Flying Occlusions (FO): randomly oriented synthetic objects are inserted to create occlusion robustness and mask-following behavior. 
        - Object Swap – Random (OS-R): an object in a real image is replaced by a random synthetic mesh, with translation/scale set from the mask and a depth/pointmap; rotation is random. Trains layout estimation and occlusion handling with realistic context.
        - Object Swap – Annotated (OS-A): like OS-R but uses human-annotated pose (translation/rotation/scale) and mesh choices, yielding pixel-aligned supervision useful for texture refinement.
    - MITL-3DO and Art-3DO (human-in-the-loop real data): real images 로 부터 human- and model-in-the-loop pipeline 으로 생성.
        - MITL-3DO: larger but noisier annotations from non-experts, used for supervised fine-tuning (SFT) and preference data (for DPO). Provides shapes, poses, masks, and for texture a separate collection emphasizing higher-aesthetics examples. 
        - Art-3DO: smaller, high-quality meshes and alignments made by professional 3D artists. Used to raise geometric quality, symmetry, closure, and aesthetics, and to supply strong signals for preference alignment.

- 학습
   1. pretrain on ISO-3DO.
   2. mid-train on RP-3DO (FO, OS-R + OS-A for texture) to gain robustness and layout skills in natural scenes.
   3. SFT on MITL-3DO then Art-3DO.
   4. preference optimization (DPO) using human choices.
   5. brief distillation for fast inference.

<img src="/data/papers/sam3d/train.png" width="800" />
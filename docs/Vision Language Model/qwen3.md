---
title: (모델 요약) Qwen3-VL Technical Report
parent: Vision Language Model
---

**(모델 요약) Qwen3-VL Technical Report** [(paper)](https://arxiv.org/pdf/2511.21631)

## 모델 수정 사항 (Qwen2.5-VL 과 다른점)
- Vision Encoder 에서 DeepStack 사용 (논문의 figure 1, section 2.2)
- coordinate 은 [0, 1000] 로 normalize
- patch size: 32 x 32
- ViT 를 pretrained checkpoint 부터 학습
  - SigLIP2-SO-400M 
  - SigLIP2-Large (300M) for small-scale LLMs (2B and 4B).

## 학습
- 순서: Vision-Language Alignment -> Multimodal Pre-Training -> Long-Context Pre-Training -> Ultra-Long-Context Adaptation
- RL algorithm 은 SAPO, reward 는 formatting 및 Qwen2.5-VL-72B-Instruct 혹은 Qwen3 이 매긴 점수 사용

## 데이터
- Pretraining
   - Image Caption
   - Interleaved Text-Image Data
   - Knowledge
   - OCR (OCR 특화 Qwen2.5-VL 로 labeing)
   - Document Parsing (HTML, Markdown 포맷으로 인식)
   - Long Document Understanding
   - Grounding (box-based, point-based) + Counting
   - Spatial Understanding (e.g., “the cup to the left of the laptop”, “graspable”, “pressable”, “sittable”, "move the monitor to reach the book behind the monitor.")
   - 3D Grounding (9-DoF 3D bounding box) 
   - Text-Only Coding
   - Multimodal Coding (HTML/CSS, SVG, coding questions in image, flowchart, diagram, latex)
   - Temporal-Aware Video Understanding
   - Science, Technology, Engineering, and Mathematics (visual perception, multimodal reasoning, linguistic reasoning)
   - Agent (GUI, function calling, search)

- Post-training
   - SFT: 1,200,000 samples, 1/3 text only, 2/3 image-text and video-text pairs (rule-based, model-based filtering)
   - Long CoT: thinking 모델 학습용 (모델이 잘 못맞추는 어려운 문제에 대해서 정답이 맞는 CoT)
   - RL: mathematics, coding, logical reasoning, visual grounding, visual puzzles
       - Qwen3-VL-235BA22B 모델로 16개 rollout 모두 실패한 queries 제외 후, 30K RL queries 확보
       - 추가적으로, 각 모델 학습시 16개 rollout 중 15번 성공하는 queries 제외

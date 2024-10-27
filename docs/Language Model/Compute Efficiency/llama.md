---
title: (모델 요약) Lightweight Llama Models
parent: Compute Efficiency
---

**(모델 요약) Lightweight Llama Models**[(blog)](https://ai.meta.com/blog/meta-llama-quantized-lightweight-models/)


- *designed the current quantization scheme with PyTorch’s ExecuTorch inference framework and Arm CPU backend in mind*

- **Quantization scheme**
   - *quantize all linear layers in all transformer blocks to a 4-bit groupwise scheme (with a group size of 32) for weights and 8-bit per-token dynamic quantization for activations.*
   - *The classification layer is quantized to 8-bit per-channel for weight and 8-bit per-token dynamic quantization for activation.*
   - *an 8-bit per-channel quantization for embedding*

- **Quantization-Aware Training with LoRA adaptors**
   - *utilize BF16 Llama 3.2 model checkpoints obtained after supervised fine-tuning (SFT) and perform an additional full round of SFT training with QAT*
   - *then freeze the backbone of the QAT model and perform another round of SFT with low-rank adaptation (LoRA) adaptors applied to all layers within the transformer block*
   - *Finally, fine-tune the resulting model (both backbone and LoRA adaptors) using direct preference optimization (DPO)*
- **SpinQuant**
   - *post-training quantization*
   - *utilize WikiText, a small calibration dataset, to learn rotation matrices in SpinQuant.* 
   - *rotation matrices enable the smoothing of outliers and facilitate more effective quantization.*
   - *After this, best practices in quantization such as range setting and generative post-training quantization are applied.*
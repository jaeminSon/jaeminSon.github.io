---
title: Chapter 18 - Modeling Expected Returns and Covariance Matrices
parent: Quantitative Finance with Python
---

**(책 요약) Quantitative Finance with Python (Chapter 18 - Modeling Expected Returns and Covariance Matrices & Optimization Techniques)**



### SINGLE & MULTI-FACTOR MODELS FOR EXPECTED RETURNS
- *Forecasting returns is inherently noisy.*
- 과거 데이터로 regression 식을 만들어서 fitting 시킬수 있음.
  - 이 때, Lasso 나 Ridge regression 으로 regularize 해주는 경우도 있음.
- [Fama-Macbeth](https://www3.nd.edu/~nmark/FinancialEconometrics/2022Course/CourseNotes/Prepared_1Nov2022.pdf)
- [Newey-West estimator](https://m.blog.naver.com/athran_zala/222705911594)
- Information Coefficient: correlation between predicted and actual stock returns

### MODELING VOLATILITY
- Rolling Window: 최근 $N$ 개 데이터 포인트들의 standard deviation
- Exponentially Weighted Moving Average Estimates
- *Traditional volatility estimates rely on end-of-day, closing prices in their calculation*
- Mean-Reverting Volatility Models: [GARCH](https://vlab.stern.nyu.edu/docs/volatility/GARCH)
- Covariance matrix 의 eigenvalue 가 음수가 되는 경우 0으로 clip 후 rescale 해줌.
- Shrinkage Methods for Covariance Matrices: semi-definite covariance  와 data-driven-covariacne 의 linear interpolation
- Random Matrix 의 분포를 바탕으로, insignificant eigenvalue 의 threshold 로 사용할수 있음.
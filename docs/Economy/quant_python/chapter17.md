---
title: Chapter 17 - Portfolio Construction & Optimization Techniques
parent: Quantitative Finance with Python
---

**(책 요약) Quantitative Finance with Python (Chapter 17 - Portfolio Construction & Optimization Techniques)**

### 문제 세팅: $N$ 개의 assets 이 주어지고, expected return, covariance matrix 가 주어진다고 가정.

### Mean-Variance Optimization: return 을 높이고 variance 를 낮추도록 weight 를 최적화.
- Unconstrained Mean-Variance Optimization: expected return - alpha*variance 최대화
- Mean-Variance Efficient Frontier: 주어진 expected return 에서 최소화된 variance 를 이은 선
- Mean-Variance Fully Invested Efficient Frontier: weight 의 합이 1 이 되도록 constraint 추가
- Constraint 를 추가해서 weight 모델링 할수 있음
  - 예시: constraint 에 weight >= 0 추가하여 long position 만 구현
- 주의 사항
  - Estimation Error in Expected Returns
  - Singularity of Covariance Matrices
  - Estimation Error of Variance Estimates
  - Non-Stationarity of Asset Correlations: stree 상태와 equilibrium 상태를 나눠서 각각 covariance 구하고 weighted sum 으로 최종 covariance 구함.

### CAPITAL ASSET PRICING MODEL
- *Leverage & the Tangency Portfolio: global optimum with Capital Allocation Line (risk-free asset such as loan) tangent to the efficient frontier*
- Capital Asset Pricing Model: $R_i=R_f+\beta_i(R_m-R_f)+\epsilon_i$
  - $R_i$: return of asset $i$
  - $R_f$: risk-free asset
  - $R_m$: return of the market
  - $\beta_i$: sensitivity of asset $i$
  - $\epsilon_i$: idiosyncracy of asset $i$
- Multi-Factor Models: underlying factor 를 찾아내는 것이 관건
  - Fundamental Analysis: e.g. *leverage information from different firms’ balance sheets*
  - Technical Analysis: e.g. *previous price patterns*
  - Risk Premia: *carry, value, momentum, quality and low volatility*
  - Statistical methods such as PCA
  - Alternative data:news articles, press releases or other documents, information on website traffic and satellite images of store parking lots.
- Fama-French Factors: $R_i=\alpha_i+R_f+\beta_{i,M}(R_m-R_f)+\beta_{i,S}(R_S-R_B)+\beta_{i,V}(R_H-R_L)$
    - $R_S$: return on small cap stocks
    - $R_B$: return on large cap stocks
    - $R_H$: return on stocks with high book to market values
    - $R_L$: return on stocks with low book to market values
    - Assume $R_S > R_B, R_H > R_L$.

### BLACK-LITTERMAN
- Market Implied Equilibrium Expected Returns: $w$ 가 market cap weight 일때, Unconstrained Mean-Variance Optimization 의 해로 도출되는 return 값.

### RESAMPLING
- Resampling the Efficient Frontier: history data 를 resample 하여 return, covariance 를 여러번 구하고, 각 케이스에 대해서 최적화된 weight 구함.

### DOWNSIDE RISK BASED OPTIMIZATION
- Value at Risk (VaR): with probability $1-\epsilon$ that the portfolio won't lose more than X.
- Conditional Value-at-Risk (CVaR): expected loss conditional on exceeding a given VaR threshold.
- Mean-VaR Optimal Portfolio: expected return 을 constraint 로 두고, VaR 최대화.
- Mean-CVaR Optimal Portfolio: expected return 을 constraint 로 두고, CVaR 최대화.

### RISK PARITY
- *Positions should be sized based on their risk contributions, with the goal of equating the risk contribution of each underlying building block*
- *Formulation doesn't depend on expected returns and only a covariance matrix is required*
- Inverse Volatility Weighting: volatility 의 inverse 에 비례하게 weighting (no correlations)
- Marginal Risk Contributions: *change in portfolio volatility as we change the weight in a given asset* == derivative of volatility with respect to each weight.
- Risk Parity Optimization Formulation: risk contribution 이 같도록 weighting.
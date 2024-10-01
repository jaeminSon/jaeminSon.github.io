---
title: Chapter 6 - Working with Financial Datasets
parent: Quantitative Finance with Python
---

**(책 요약) Quantitative Finance with Python (Chapter 6 - Working with Financial Datasets)**

## 핵심 내용
- Data sources
  - Yahoo Finance: stock price data + some futures data.
  - FRED: historical data on economic variables (GDP, employment, credit spreads) [(fredapi in python)](https://github.com/mortada/fredapi)
  - Treasury.gov: Historical yield curve data for the US
  - Quandl: Equity market data + data on futures
  - HistData: Contains free data from FX markets, **including intra-day data**
  - OptionMetrics: Contains relatively clean options and futures data for equity and other markets (great, but costly)
  - CRSP: A broad, robust, historical database that doesn’t suffer from survivorship bias (e.g. Equity prices)
  - Ken French’s Website: Useful historical datasets of the returns for Fama-French factors

- Missing data filling
  - Interpolation & Filling Forward
  - Filling via Regression
  - Filling via Bootstrapping
  - Filling via K-Nearest Neighbor

- Outlier detection
  - Single vs. Multi-Variate Outlier Detection
  - Plotting
  - Standard Deviation
  - Density Analysis
  - Distance from K-Nearest Neighbor
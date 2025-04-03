# Instructions 

This project will serve to evaluate students for the "Advanced Topics in Financial Modelling" class. Submit your work as a ![image](img/python-logo.png){width="3%"} Jupyter Notebook or an ![image](img/R-logo.png){width="3.5%"} Markdown document. A significant part of the grade will be determined by the quality of presentation, including literary comments as well as nice LaTeX equations, ideally directly in the notebook. This project can be done individually or by pair, but not more. [**[Submissions will not be accepted after April, $20^{th}$ 2025]{.underline}**]{style="color: blue"}.

If you have issues with the Yahoo API, write the code in the Notebook but you can use the <a href = "project_raw_data.csv">project_raw_data.csv</a> as a backup.

# The brief

You have recently been hired as a quant analyst within the "client advisory" team of a Private Bank. In the past, the team has partnered with a US ETF provider called Direxion (<https://www.direxion.com/)> which claims to offer "Timely opportunities for tactical trades and precise investment exposure". More specifically:

  - In case of bear expectations, the team advises to invest into the Direxion Daily S&P 500® Bear (SPXS) 3X Shares which provides a 3 times
  leveraged short exposure on the S&P 500.
  - In case of bull expectations, aside the traditional 3) "spider" SPDR S&P 500 ETF (SPY) which provides delta 1 exposure to the S&P 500 at a   cheap price, the team advised 4) the Direxion Daily S&P 500® Bull   (SPXL) 3X Shares which provides a 3 times leveraged long exposure on the S&P 500. 

However, the team stopped advising those products because they did not behave as expected and even raised some suspicion among certain clients. A new head of advisory has been appointed and asks to you review the performances of those ETFs and clarify certain points:
  1.  What should be told to clients to better manage their expectations ?
  2.  Should the team keep them on the advisory list ?

You are asked to write a comprehensive memo on the matter which will be presented to the Executive Committee, in April.

## Data extraction

Write a code which retrieves the last 5 years of Direxion data prices, thanks to the Yahoo API. This code should be written in such way that it could easily be executed later in the future. 

The bank account $B_{t}$ will be proxied by the SOFR Index. Retrieve the SOFR Index historical values thanks to the Federal Reserve of New York API.

## Plot the historical plots

of prices of the different products expressed in bank account units (i.e. $V_{t}/B_{t}$ while rebasing them at 1 as their initial value.

## Calculations
Compute the following (annualized) descriptive statistics of daily log-returns: mean, volatility, skewness, kurtosis. Compute their correlations as well as their Sharpe ratio. Comment.

## Power profiles and Gamma effects

In all the following, $V_{t}\left(l\right)$ denotes the value of the ETF with leverage $l$ at date $t$ and $S_{t}$ denotes the value of the S&P 500. We also denote $\tilde{S}_{t}\equiv\frac{S_{t}}{B_{t}}$ and $\tilde{V}_{t}\left(l\right)\equiv\frac{V_{t}\left(l\right)}{B_{t}}$

## Misselling ?
Explain why clients might believe that the following
relationship should hold: $$\frac{V_{T_{2}}\left(l\right)}{V_{T_{1}}\left(l\right)}\approx l\frac{S_{T_{2}}}{S_{T_{1}}}+\left(1-l\right)$$


## Formulate Prediction 
Show that, in principle, between two dates $T_{1}$ and $T_{2}$ a
better prediction is given by:
$$\frac{\tilde{V}_{T_{2}}\left(l\right)}{\tilde{V}_{T_{1}}\left(l\right)}\approx\left(\frac{\tilde{S}_{T_{2}}}{\tilde{S}_{T_{1}}}\right)^{l}exp\left(-\frac{1}{2}\left(l^{2}-l\right)\hat{\sigma}_{1,2}^{2}\left(T_{2}-T_{1}\right)\right)$$
where $\hat{\sigma}_{T_{1},T_{2}}^{2}$ is the the cumulated realised
variance between $T_{1}$ and $T_{2}$ .

## Test prediction 

Compute and plot the rolling 1 year estimated variance. Comment. What is the average trend due to leverage predicted by the formula for
each ETF ? Comment.

We want to test the formula on rolling yearly returns. Compute first

 - $\hat{\sigma}_{t_{i}-1year,t_{i}}^{2}$ ,
 - $X_{t_{i}}=\frac{S_{t_{i}}}{S_{t_{i}-1year}}$ and
 - $R_{t_{i}}=\frac{B_{t_{i}}}{B_{t_{i}-1year}}$,
 - $\tilde{X}_{t_{i}}=X_{t_{i}}/R_{t_{i}}.$

Then, for each product with leverage $l$, for each date $t_{i}$ in the dataset compute:

 - $Y_{t_{i}}^{naive}\left(l\right)=lX_{t_{i}}+\left(1-l\right)$
 - $Y_{t_{i}}^{predict}\left(l\right)=X_{t_{i}}^{l}\times R_{t_{i}}{}^{1-l}exp\left(-\frac{1}{2}\left(l^{2}-l\right)\hat{\sigma}_{t_{i}-1year,t_{i}}^{2}\right)$
 - $Y_{t_{i}}^{real}$ $\left(l\right)$ the 1 year rolling price ratio of
  the ETF with leverage $l$.

## Regressions

For each product:
 - Compute the $R^{2}$ of the linear regressions of
  $Y_{t_{i}}^{real}$$\left(l\right)$ vs
  $Y_{t_{i}}^{predict}\left(l\right)$ as well as vs
  $Y_{t_{i}}^{naive}\left(l\right)$

 - Plot $Y_{t_{i}}^{naive}$ , $Y_{t_{i}}^{predict}$ and
  $Y_{t_{i}}^{real}$ as a function of $X_{t_{i}}$ .

Comment. Is the naive prediction good ? Is the theoretical
description good ? How would you present this to a non-sophisticated
investor ? Would you recommend these products ?

## Doing it yourself 

Instead of buying a Direxion ETF, your bank considers to
implement the leveraged strategy at home. They ask you to simulate the
strategy with a leverage equal to 3. Compare the results with the ETF
and with the prediction. Comment.


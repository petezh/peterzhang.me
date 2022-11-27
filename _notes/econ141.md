---
title: 'Notes: ECON 141 / Econometrics'
date: 2022-1-21
permalink: /notes/econ141
tags:
  - class notes
  - economics
---

These notes are for Spring 2022's Economics 141: Econometrics.

## Probability

Identities:

$$\mathbb{E}[X] = \int xf_x(x) dx$$
$$\mathbb{E}[aX + b] = a\mathbb{E}[X] + b$$
$$Var(X) := \mathbb{E}[X^2] - \mathbb{E}[X]^2$$
$$Cov(X, Y) := \mathbb{E}[XY] - \mathbb{E}[X] \mathbb{E}[Y]$$
$$\mathbb{E}[XY] = \int \int xy f_{x, y} (x, y) dx dy$$
$$\mathbb{P}(Y = y | X = x) = \frac{\mathbb{P}(Y = y, X = x)}{\mathbb{P}(X = x)}$$
$$Var(X + Y) = Var(X) + Var(Y) + 2Cov(X, Y)$$


$$X \sim \mathcal{N}(\mu, \sigma^2) \implies f_X(x) = \frac{1}{\sqrt{2\pi} \sigma} \text{exp}(-\frac{(x - \mu)^2}{2\sigma^2})$$

For independent variables, $Cov(X, Y) = 0$. But for $Y = X^2$ and $X \sim U[-1, 1]$, we have $Cov(X, Y) = 0$ despite dependence.

## Estimators

Suppose we use $\hat{\mu}$ as an **estimator** for r.v. $X$. If $\mathbb{E}{\hat{\mu}} = \mathbb{E}[X]$, then $\hat{\mu}$ is an **unbiased** estimator.

The **Law of Large Numbers** dictates that for $\hat{\mu}_n = \frac{1}{n} \sum_{i=1}^n x_i$ with $n$ samples $x_i$, we have:

$$\mathbb{P}(\hat{\mu}_n - \mu) > \epsilon) \to 0$$

So the average $\hat{\mu}_n$ is a **consistent** estimator of $\mu$, i.e. it becomes asymptotically close. The variance is $Var(\hat{\mu}_n) = \frac{Var(X)}{n} = \sigma^2_x / n$, which approaches $0$ as $n \to \infty$.

The **z-score** is:

$$z = \frac{\bar{x} - \mu}{\sigma_x / \sqrt{n}}$$

According to the **Central Limit Theorem**, as $n \to \infty$, the distriubution of the z-score is $\mathcal{L}(u) \sim \mathcal{N}(0, 1)$.

The difference between the estimators $\hat{\mu} = \bar{x}$ and $\check{\mu} = x_1$ is different weights, $w_1 = (1, 0, ..., 0)$ and $w_{\bar{x}} = (\frac{1}{n}, \frac{1}{n}, ..., \frac{1}{n})$. It turns out that $\hat{\mu} = \bar{x}$ is the most **efficient** estimator among weigted averages, as measured by variance.

Notice that since we use the samples to estimate $\bar{x}$, there is one fewer degree of freedom among the demeaned samples $x_i - \bar{x}$ (since knowing $n-1$ of them tells you the value of the $n$th), so we compute:

$$X_x^2 = \frac{1}{n-1} \sum_{i=1}^n (x_i - \bar{x})^2$$

Intuitively, if we have fewer samples, then the mean of our sample will be a biased estimator of the actual mean, underestimating the variance.

## Hypothesis Testing

Suppose our significance level is 0.5. The **acceptance region** is collection of $\bar{x}$s such that $\bar{x} \in [\mu - 1.96 * \sigma_x, \mu + 1.96 * \sigma_x]$. For be correct, we should accept true hypotheses $(A, T)$ and reject false hypotheses $(R, F)$, or else we have a type 1 error $(R, T)$ or type 2 error $(A, F)$. The power of the test $\alpha$ is derived from $\mathbb{P}(\text{type 1 error}) \leq \alpha$.

We set $t = \sqrt{n} (\frac{\bar{x} - \mu_0}{\hat{\sigma}_x})$. As $n \to \infty$, $\hat{\sigma}_x \to \sigma_x$, and $t \sim N(0, 1)$. For the one-sided case, the required confidence level is usually $z(x) > 1.65$.

## OLS

Our estimator is $Y_i = \beta_0 + \beta_1 X_i + u_i$, with goal of minimizing the sum of squared **residuals** $u_i$:

$$\min_{b_0, b_1} \sum_{i=1}^n [Y_i - (b_0 + b_1 X_x)]^2$$

Deriving with respect to both $b_0$ and $b_1$, we have $0 = \frac{1}{n} \sum_{i=1}^n \hat{u}_i$, which means the sample average of residuals must be 0, and $\frac{1}{n}  \sum_{i=1}^n X_i \hat{u}_i$, which means that the coveraince between residuals and $X_i$s must be 0. It yields:

$$\hat{\beta}_1 = \frac{s_{XY}}{s_X^2}$$

$$\hat{\beta_0} = \bar{Y} - \hat{B}_1 \bar{X}$$

Note that residuals and errors are different, since the **residuals** $\hat{u_i} := Y_i - (\hat{\beta}_0 + \hat{\beta}_1 X_i)$ are estimators of the true **errors** $u_i := Y_i - (\beta_0 + \beta_1 X_i)$.

The **SSR** or sum of squared residuals is how much of the data can't be explained by linear regression. The **ESS** or explained sum of squares is how much can be explained. The **TSS** or total sum of squares is the total spread of the data.

$$TSS =\sum_{i=1}^n (Y_i - \bar{Y})^2 = \sum_{i=1}^n \hat{u_i}^2 + \hat{\beta_1}^2 \sum_{i=1}^n (X_i - \bar{X})^2 = ESS + SSR$$

Finally, $R^2 = \frac{ESS}{TSS}$ and represents the proportion of the variation in $Y$ explained by the variation in $X$.

**Homoskedastic** errors have $Var(u_i) = \sigma_u^2$. Under heteroskedasticity, $\hat{\beta}_1$ will be consistent, unbiased, and asymptotically normal but not efficent. We use a different formula for standard error which usually produces higher values.

**Omitted variable bias** occurs when we have a omitted variable $Z$ and the coefficient $\beta_2 \neq 0$ and $\hat{sigma}_{XZ} \neq 0$, resulting in a bias of $\hat{B_1} = \beta_1 + \beta_2 \frac{\hat{\sigma}_{XZ}}{\hat{\sigma}_X^2} + \frac{\hat{\sigma}_{Xu}}{\hat{\sigma}_X^2}$.


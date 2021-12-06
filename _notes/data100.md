---
title: 'Notes: Data 100 / Data Science'
date: 2021-03-07
permalink: /notes/data100
tags:
  - class notes
  - statistics
  - computer science
---

These notes are for Spring 2021's [Data 100: Principles and Techniques of Data Science](http://www.ds100.org/sp21/) based on the class' [textbook](https://www.textbook.ds100.org/). SQL and Pandas syntax is omitted because a [guide](https://ds100.org/sp21/resources/assets/exams/sp20/sp20_checkpoint_reference_sheet.pdf) is provided. I stopped taking notes after the midterm.

Midterm
===

## Data Sampling

**Convenience sampling** is biased sampling method where the sample is taken from a group of people that are easy to contact. **Quota sampling** attempts to fix this by setting "quotas" for various demographics, but it still falls prey to sampling by convenience.

**Probability sampling** is a family of sampling methods that control the precise probability of sampling any individual. The most basic method is the **simple random sample** (SRS), which picks *uniformly* at random *without replacement*.

**Cluster sampling** first divides the population into clusters and then uses SRS to select a cluster. While it makes sample collection easier (e.g. by polling people from select towns across the U.S.), it can produce greater variation in estimates.

**Stratified sampling** is similar. It similarly divides the population into strata and then conducts an SRS on each strata. Although it can resolve the downsides of quota sampling by ensuring proportionality, it requires us to have prior knowledge of population parameters.

An SRS can often outperform big data, despite being orders of magnitude smaller. One reason is that when the sampling method biased, having more data can *exacerbate* the existing bias. When it comes to data, *quality > quantity*.

## Modeling

A **model** is an *idealized* representation of a system. For example, Newtonian physics is good at explaining everyday motion, even if it suffers at the subatomic or cosmic scale.

A **loss function** assesses how well the parameters of the model fit a dataset. The lower the **loss**, the better the parameters. Some basic loss functions:

- **L1/MSE**: Mean squared error computes the average square of the differences between the predicted and actual values across the dataset. For a dataset with $$n$$ data points, the loss function is $$\frac{1}{n} \sum^n_{i=1}(y_i - \hat{y_i})^2$$.

  L1 penalizes models with large residuals. For the simple model $$\hat{y} = \theta$$, the optimal value is $$\theta = \bar{y}$$.

- **L2/MAE**: Mean absolute error computes average difference between each predicted and actual value. Mathematically, the loss function is $$\frac{1}{n} \sum^n_{i=1} \| y_i - \theta \|$$.

  MSE is usually greater than MAE since the errors are squared, so we often normalize the two by taking the root of the MSE.

  For $$\hat{y} = \theta$$, the optimal value is $$\theta = \text{median(y)}$$. 

  **Huber**: Combines both MSE and MAE by defining a "transition point" $$\alpha$$ where it switches from MSE to MAE. Mathematically, we have:

  $$\frac{1}{n} \sum^n_{i=1} \begin{cases} \frac{1}{2}(y_i-\theta)^2  & \| y_i - \theta \| \leq \alpha \\ \alpha(\| y_i-\theta\| - \frac{1}{2} \alpha) & \text{otherwise} \end{cases}$$

  Huber loss is smooth and increases at a linear rate, but we have to find the optimal value of $$\alpha$$, which usually requires gradient descent.

## OLS

Minimizing least square error is equivalent to minimizing the L2-norm of a vector $$v = \begin{bmatrix}y_1 - \theta\\ y_2 - \theta \\ ... \\\ y_n - \theta \end{bmatrix}$$. Geometrically, we can understand OLS as the projection of $$y$$ on the span of the design matrix $$\mathbb{X}$$. So, if $$X = [\vec{1}\ \vec{x}]$$, then we wish to project $$\vec{y}$$ onto the span of $$\vec{1}$$ and $$\vec{x}$$, as pictured below.

![](/resources/ols_geo.png)

Letting $$\vec{e}$$ denote the "error," we have $$X \hat{\theta} + \vec{e} + \vec{y}$$, and multiplying by $$X^T$$ yields $$X^T X \hat{\theta} = X^T\vec{y}$$. We easily arrive at $$\hat{\theta} = (X^TX)^{-1}X^Ty$$. Notice that if the variables are linearly dependent (i.e. a new variable is a linear combination of existing vectors), then the span doesn't change.

## Probability

A **random variable** represents a numerical value represented by a probabilistic event, usually denoted with a capital letter. For example, if $$X$$ represents the number of heads in 10 coin tosses, then we can evaluate $$P(X=0) = (0.5)^{10}$$.

The **probability mass function (PMF)** or **distribution** of a random variable is the probability that $$X$$ takes on a given value. We are guaranteed that $$\sum_{x \in \mathbb{X}} P(X = x) = 1$$ and that $$\forall x \in \mathbb{X}, 0 \leq P(X = x) \leq 1$$.

Sometimes we want to consider multiple random variables, for which we can calculate the **joint distribution**. Two random variables are **independent** if knowing the outcome of one variable doesn't alter the distribution of the other. For example, if $$X$$ and $$Y$$ represent two sets of coin flips, we have $$P(X=x, Y=y) = P(X=x)$$ for all $$x, y$$.

## Expectation and Variance

The **expected value** or **expectation** of a variable is the long-run average, calculated as $$\mathbb{E}[X] = \sum_{x \in \mathbb{X}} x \dot P(X = x)$$. **Linearity f expectation** states that $$\mathbb{E}[X + Y] = \mathbb{E}[X] + \mathbb{E}[Y]$$, which further implies $$\mathbb{E}[cX] = c\mathbb{E}[X]$$.

The **variance** of a variable is the magnitude of the its spread, calculated as $$Var(X) = \mathbb{E}[X^2] - \mathbb{E}[X]^2$$. The **covariance** is defined as $$Cov(X, Y) = \mathbb{E}[XY] - \mathbb{E}[X] \mathbb{E}[Y]$$. If $$X$$ and $$Y$$ are independent, then $$\mathbb{E}[XY] = \mathbb{E}[X] \mathbb{E}[Y]$$ and $$Cov(X, Y) = 0$$.

## Bernoulli

A **Bernoulli random variable** $$X$$ has $$P(X=1) = p$$ and $$P(X = 0) = 1-p$$. We have $$\mathbb{E} = p$$ and $$Var(X) = p(1-p)$$. For $$n$$ flips, we would expect the proportion of heads to converge to $$\hat{p} = p$$ so $$\hat{p}$$ is an unbiased estimator of $$p$$. Meanwhile, the variance decreases with more flips so that $$Var(\hat{p}) = \frac{p(1-p)}{n}$$.

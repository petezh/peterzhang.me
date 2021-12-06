---
title: 'Notes: STAT 134 / Probability'
date: 2021-08-10
permalink: /notes/stat134
tags:
  - class notes
  - statistics
---

I took these notes for [Stat 134: Concepts of Probability](https://bcourses.berkeley.edu/courses/1506088) taught by Professor Ibser and based on *Probability* by Jim Pitman.

Midterm
===

## Probability

### Outcomes

The set of possible outcomes is denoted by $$\Omega$$, while an event $$A$$ is a subset of $$\Omega$$. Letting $$\#(A)$$ denote the number of outcomes of $$A$$, the probability of $$A$$ under equally likely outcomes is $$P(A) = \frac{\#(A)}{\#{\Omega}}$$. **Odds** for $$A$$ are the raito of the number of $$A$$ to the number of not $$A$$. **Payoff odds** express the ratio of your stake to a casino's stake. In a fair bet, the payoff odds are equal to the chance odds. Assume payoff odds of $$r_{pay}$$ to $$1$$, the fair price would be $$P(A)(r_{pay} + 1)$$.

A **relative frequency** is how often something occurs in a sequence of observation. According the **empirical law of averages**, the relative frequency tends to stabilize with more trials. In the real world, we should assume that objects are distinguishable. Another interpretation of probability is that of an **opinion** - it's often reasonable to think in such terms for one-off events.

An event $$B$$ is **partitioned** into $$n$$ events if $$B = B_1 \cup B_2 \cup ... \cup B_n$$ and the events are mutually exclusive. Probabilities of events are always non-negative. A distribution over $$\Omega$$ is a  probability function of subsets where $$P(\Omega) = 1$$. The analogous set notation of events is below.

![](/images/classes/stat134/notation.png)

Rules:

- **Complement rule**: $$P(A) + P(A^c) = 1$$
- **Difference rule**: If $$A \subseteq B$$, then $$P(B not A) = P(B) - P(A)$$.
- **Inclusion-exclusion**: $$P(A \cup B) = P(A) + P(B) - P(AB)$$.

### Distributions

A **Bernoulli** distribution has outcomes $$0$$ and $$1$$ with probabilities $$1-p$$ and $$p$$, respectively. A **uniform** distribution is defined by equally likely outcomes and can be made over a finite set, continuum, area of a plane, etc. An **empirical** distribution on $$(-\infty, \infty)$$ is defined by $$P_n(a, b) = \#{i : 1 \leq i \leq n, a < x_i < b}/n$$ where $$P_n(a, b)$$ is the proportion of numbers that lie on the interval $$(a, b)$$; it can be displayed via a histogram.

Conditional probability of $$A$$ given $$B$$ is $$P(A \| B) = \frac{P(AB)}{P(B)}$$. The **multiplication rule** states that $$P(AB) = P(A \| B)P(B)$$. For any events $$A$$ and $$B$$, $$P(A) = P(A \| B)P(B) + P(A \| B^c)P(B^c)$$; it generalizes to any number of partitions. For **independent events** where $$P(A \| B) = P(A)$$, the multiplication rule simplifies to $$P(AB) = P(A)P(B)$$.

### Baye's Rule

Behold, **Bayes' Rule** for a partition $$B_1, B_2, ..., B_n$$ of outcomes:
$$
P(B_i | A) = \frac{P(A | B_i)P(B_i)}{P(A|B_1)P(B_1) + ... + P(A|B_n)P(B_n)}
$$
The **multiplication rule** for n events is:
$$
P(A_1, A_2, ...,A_n) = P(A_1)P(A_2 | A_1) P(A_3 | A_1A_2) ... P(A_n|A_1A_2...A_{n-1})
$$
Consider a sequence of trials where each trials is equally likely to result in one of $$N$$ outcomes. The probability that the first event repeat appears by trial number $$n$$ is:
$$
P(B_n) = 1 - (1 - \frac{1}{N}) (1- \frac{2}{N}) ... (1-\frac{(n-1)}{N}) \approx 1 - e^{-\frac{n^2}{2N}}
$$
A set of events $$A, B, C$$ are independent if $$P(B|A) = P(B|A^c) = P(B)$$ and $$P(C|AB) = P(C|A^cB) = P(C|AB^c) = P(C | A^cB^c) = P(C)$$. The multiplication rule for independent events is $$P(ABC) = P(A)P(B)P(C)$$. **Pairwise independence** is not as strong as independence. Consider a set of coin tosses with events $$H_1$$, $$H_2$$, and $$S$$, where $$S$$ is the event that both heads land the same way. Each pair is independent, but the three events are not independent.

## Trials/Sampling

### Binomial

The probability of $$k$$ success in $$n$$ trials is $${n \choose k} p^k q^{n-k}$$ where $$n \choose k = \frac{n(n-1)...(n-k+1)}{k(k-1)...1} = \frac{n!}{k!(n-k)!}$$. The odds of $k$ consecutive successes relative to $k-1$ successes are:
$$
R(k) = [\frac{n - k + 1}{k}] \frac{p}{q}
$$


The **mode** is $$m =  \text{floor} (np + p)$$, except when $$p= 1/2$$ and $$n$$ odd, where $$m$$ and $$m-1$$ are equally likely. The **mean** of the binomial distribution is $$\mu = np$$.

### Normal

The normal distribution with mean $$\mu$$ and standard deviation $$\sigma$$ has a normal curve:
$$
y = \frac{1}{\sqrt{2\pi} \sigma} e^{-1/2 (x-\mu)^2/\sigma^2}
$$
We can late $$z = (x-\mu)/\sigma$$, denoting **standard units** from the mean. We can fit a normal curve to the binomial distribution as follows:
$$
P(a \text{ to } b \text{ successes}) \approx \mathcal{N}(\frac{b + 0.5 - \mu}{\sigma}) - \mathcal{N}(\frac{a - 0.5 - \mu}{\sigma})
$$
Here, $$\mu = np$$ is the mean and $$\sigma = \sqrt{npq}$$ is the standard deviation.

The **square root law** states that the number of successes will lie in a small interval of numbers centered on $$np$$ with width a multiple of $$\sqrt{n}$$. The **proportion** of successes will lie in a small interval centered on $$p$$ with width a multiple of $$1/sqrt{n}$$. The **law of large numbers** states that the proportion of successes will converge to $$p$$ as the number of trial goes to infinity.

As an approximation, the normal distribution is better for $$p$$ closer to 1/2 and greater $$\sigma$$. The worst error in the normal approximation is less than 0.01 for $$n \geq 10$$. The skew-normal approximation includes the curve $$\mathcal{N}'''(z) = (3z - z^3)$$ and can be modeled as
$$
y = \mathcal{N} - \frac{1}{6} \text{Skewness} (n,p) \mathcal{N}'''(z) \text{ where } \text{Skewness}(n, p) = (1-2p)/\sqrt{npq} = (1-2p)/\sigma
$$

### Poisson Approximation

Binomial distributions with $$n$$ draws and $$1/n$$ probability of success cannot be accurately estimated with normal curves. Instead, as $$n \go \infty$$, the shape of the distribution approaches the **Poisson distribution** with parameter $$\mu$$. The chance of zero successes in $$n$$ trials with probability $$p$$ can be approximated exponentially as
$$
P(0) = e^{-\mu} \text{ for } p\approx 0
$$
The probability of $$k$$ successes in $$n$$ trials is
$$
R(k) = \frac{P(k)}{P(k-1)} \approx \frac{\mu}{k}
$$
More generally, according to Poisson approximation:
$$
P(k\text{ successes}) = P_\mu(k) \approx e^{-\mu} \frac{u^k}{k!}
$$

### Random Sample

Suppose we want to estimate the proportion of "good" elements from a sample. Consider sampling $$n$$ draws from a population of size $$N$$ so that all $$N^n$$ sequences are equally likely. There is a probability $$p = G/N$$ of success in each trial, which is well approximated by the normal curve. For n sufficiently large, the number of good elements will be in $$np \pm 2\sqrt{npq}$$

When sampling without replacement, there are $${N \choose n}$$ possible sequences. The chance of getting $$g$$ good and $$b$$ bad elements is:
$$
{G \choose g} {B \choose b}/{N \choose n}
$$


The **hypergeometric distribution** is the distribution of good elements in a sample of size $$n$$ without replacement from a population of $$G$$ good and $$N-G$$ bad elements. For large enough $$N$$, $$G$$, $$B$$, the hypergeometric distribution can be approximated by the binomial distribution.

## Random Variables

### Distrubtions

A **random variable**, denoted with a capital letter, represents something that can take on a set of values. The **range** of a random variable $$X$$ is the set of all possible values $$X$$ can produce. Although random variables usually take on numbers, we could also have random pairs, random sequences, random permutations, or even random suits.

A statement about a random variable (e.g. $$X \geq 3$$) defines an event. If a statement is made about a RV $$X$$, then the event (say, $$B$$) is **determined** by $$X$$. The distribution of $$X$$ is determined by the probabilities of the individual values, while the probability of event $$B$$ is determined via the addition rule:
$$
P(X = x) \ \ x \in \text{range of } X\\
P(X \in B) = \sum_{x \in B} P(X = x)
$$


The symbol used to represent a generic possible value of a distribution is called a **dummy variable** and need not necessarily be denoted by $$x$$. Take for example:
$$
P(X = v) = P(Y = v)
$$


A random variable can be expressed a s a function of another random variable. If we say $$X = g(W)$$, then $$g$$ represents a function defined on the range of $$W$$ with values in the range of $$X$$. It is a **deterministic rule** which means that $$X$$ can never be more detailed than $$W$$. This means
$$
P(x = x) = P(g(W) = x) = \sum_{w : g(w) = x} P(W = w)
$$


We can create new random variables using common functions, such as $$2X$$ and $$X^2$$.

The **combined** or **joint** outcome of a pair of random variables describes the distribution of a set of values $$(X, Y)$$. The event that $$((X, Y) = (x, y))$$ is the intersection of the events $$(X = x)$$ and $$(Y = y)$$. The distribution is determined by:
$$
P(x, y) = P(x = x, Y = y) \\
P(x, y) \geq 0 \text{ and } \sum_{(x, y)} P(x, y) = 1
$$


The events $$(x, y)$$ form a partition of $$(X = x)$$, so $$P(X = x) = \sum_{y \in Y} P(X, y)$$. While two random variables can have **identical distributions**, they may not be equal. Consider two draws without replacement, where $$P(X = Y) = 0$$. Two variables are **equal** only if $$P(X = Y) = !$$.

For a random variable $$Y$$ and events $$A$$ and $$B$$, we express conditional probabilities as:
$$
P(Y \in B | A) = \frac{P[(Y \in B) \land A]}{P(A)}
$$

For random variables $$X$$ and $$Y$$, $$P(Y = y \| X = x)$$ defines a distribution over the range of $$Y$$ given $$X = x$$. The joint distribution is fond using $$P(X = x, Y = y) = P(X = x) P(Y = y \| X = x)$$. They are independent if $$P(X = x, Y = y) = P(X = x)P(Y = x)$$ for all $$x$$ and $$y$$.

The joint distribution of several random variables $$X_1, X_2, ..., X_n$$ is defined by the joint probabilities
$$
P(x_1, ..., x_n) = P(X_1 = x_1, ..., X_n = x_n)
$$


for all values $$x_i$$ of each $$X_i$$. The group of RVs are **independent** if
$$
P(x_1, x_2, ..., x_n) = P(X_1 = x_1) P(X_2 = x_2)...P(X_n = x_n)
$$


Letting $$N_1$4 denote the number of results in category $$i$$ with probability $$p_i$$, for every $$m$$-tuple of non-negative integers with sum $$n$$:
$$
P(N_1 = n_1, N_2 = n_2, ..., N_m = n_m) = \frac{n!}{n_1! n_2! ... n_m!} p_1^{n_1} p_2^{n_2} ... p_m^{n_m} 
$$


**Symmetry** arguments can simplify calculations. A distribution is symmetric about 0 if $$P(X = -x) = P(X = x)$$. Similarly, a distribution is symmetric about $$b$$ if $$P(Y = b + x) = P(Y = b - x) \text{ for all } x$$. 

### Expectation

The **mean** of a probability distribution $P(x)$ is the average of all the values $$x$$ weighted by their probabilities, i.e. $$\mu = \sum_{x} xP(x)$$. It can be thought of as the center of gravity. The **expectation** of a random variable $$X$$ is the mean of its distribution. The **binomial distribution** has expectation $$E(X) = np$$.

An **indicator** $$I_A$$ for an event $$A$$ takes on the value $$1$$ if $$A$$ occurs amd $$0$$ otherwise, so $$E(I_A) = P(A)$$. Over the long run, the average converges to the expectation. Use indicators to simplify expressions. The sum of indicators is an indicator if the corresponding events are mutually exclusive. In general, **Boole's inequality** dictates that $$P(X \geq 1) \leq E(X)$$. It can generalized to **Markov's inequality**, which states that for $$X \geq 0$$, $$P(X \geq a) \leq \frac{E(X)}{a}$$.

According to the **addition rule**, the expectation of two RVs equal to the sum of the two RVs expectations, i.e. $$E(X + Y) = E(X) + E(Y)$$. For a set of events $$A_1, A_2, ..., A_n$$, the expected number of events to occur is $$E(X) = P(A_1) + P(A_2) + ... + P(A_n)$$. A RV with values $$\{0, 1, ..., n\}$$ can be represented as counting the number of events so that $$E(X) = \sum_{j=1}^n P(X \geq j)$$.

For a function of $$X$$, we compute the expectation as $$E[g(X)] = \sum_x g(x) P(X = x)$$. **Moments** refer to averages of powers of a distribution $$X$$. If distributions $$X$$ and $$Y$$ are independent, then $$E(XY) = [E(X)][E(Y)]$$.

A loss function $$L(x, b)$$ models the loss of predicting $$b$$ when the value is $$x$$. Common functions are absolute error (where the solution is the median) and mean squared error (where the solution is the expectation).

### SD and Approximation

The **variance** of a random variable $$X$$ is the mean squared deviation from its expected value: $$Var(X) = E[(X - E[X])^2]$$. The **standard deviation** of $$X$$ is the square root of the variance: $$SD(X) = \sqrt{Var(X)}$$. An equivalent but easier calculation for the variance is:
$$
Var(X) = \sum_x x^2 P(X = x) - [\sum_x xP(X = x)]^2
$$


The variance of an indicator is $$\sqrt{p(1-p)}$$. Variances scale, so $$SD(aX + b) = \|a\| SD(X)$$. We standardized random variables as: $$X^* = (X - \mu)/\sigma$$. Variances add if they are independent: $$Var(X+Y) = Var(X) + Var(Y)$$.

Even for distributions that aren't normal, most elements will be within a few standard deviations of $$E[X]$$. Chebychev's inequality states that for a RV $$X$$ and $$k > 0$$,
$$
P(|[X - E(X)]| \geq kSD(X) \leq \frac{1}{k^2}
$$


The **Central Limit Theorem** states that the sum of independent variables is approximately normal, regardless of the underlying distribution.

The **skewness** of $$X$$ is the third moment
$$
\text{Skewness}(X) = E(X^3_*) \\ \text{Skewness}(S_n) = \text{Skewness}(X) /\sqrt{n}
$$



### Discrete Distributions

The **expectation** of a discrete random variable $$X$$ is $$E(X) = \sum_x xP(X = x)$$ if it is absolutely convergent. For example, the number of times $$T$$ that you need to make a draw before a success is $$P(T = i) = q^{i-1}p$$.ww

### Poisson Distribution

The **Poisson distribution** approximates the number $$N$$ occurrences of $$n$$ events when events have small probability $$p$$ and are nearly independent.
$$
P(N = k) \approx e^{-\mu} \mu^k / k!
$$


If $$N$$ has Poisson distribution, then $$E(N) = \mu$$ and $$SD(N) = \sqrt{\mu}}$$. For $$\mu$$ large enough that the standard deviation is small, the distribution becomes normal in shape. It has skewness $$1/sqrt{u}$$. The skew-normal approximation is:
$$
P(N_\mu \leq b) \approx \mathcal{N}(z) - \frac{1}{6\sqrt{\mu}} (z^2 - 1) \mathcal{N}(z) \text{ where } z = (b+\frac{1}{2} - \mu)/ \sqrt{\mu}
$$


For independent Poisson variables, $$N_1 + ... + N_j$$ is a Poisson random variable with parameter $$\mu_1 + ... + \mu_j$$.

A **random scatter** involves counting the number of points in a continuous region. We assume **no multiple hits** (that distinct hits defined distinct points) and **randomness of hits on subsquares** (that subsquares are hit with the same probabilities). There is a constant $$\lambda$$ such that the number $$N(B)$$ of hits in a subset $$B$$ is a Poisson random variable with $$\mu = \lambda \times \text{area}(B)$$ and that for disjoint subsets, the number of hits are mutually independent.

### Symmetry

Two random variables RVs $$(X, Y)$$ with joint distribution $$P(x, y) = P(X = x, Y= y)$$ are **symmetric** if $$P(x, y) = P(y, x) \forall (x, y)$$. Analogously, for three RVs, the joint distribution is symmetric if $$P(x, y, z) = P(x, z, y) = ...$$. In general, a function $$f(x_1, ..., x_n)$$ is symmetric if the value is unchanged for all permutation of the same variables. Symmetry applies to sampling without replacement, since random permutation are exchangeable.

The hypergeometric distribution measures the number of good elements $$S_n$$ is a sample of size $$n$$ for a population of size $$N$$ containing $$G$$ good elements:
$$
P(S_n = g) = {G \choose g} {N - G \choose n - g} / {N \choose n}
$$


The mean and standard deviation are $$E(S_n) = np$$ and $$SD(S_n) = \sqrt{\frac{N - n}{N - 1}} \sqrt{npq}$$. Here, the factor $$\sqrt{\frac{N-n}{N-1}}$$ is the finite population correction factor.

Final
===

## Continuous Distribution

A probability density curve is denoted $$f(x)$$. Probabilities are defined by areas under the graph:
$$
P(a \leq X \leq b) = \int^b_a f(x) dx
$$
Expectation and variance are defined as expected:
$$
E(X) = \int^\infty_{-\infty} xf(x) dx, Var(X) = E(X^2) - E(X)^2
$$

Two continuous variables $$X$$ and $$Y$$ are independent if, for intervals $$A$$ and $$B$$,
$$
P(X \in A, Y \in B) = P(X \in A)P(Y \in B)
$$
A random variable has a uniform distribution on $$(a, b)$$ if $$f(x)$$ is constant on $$(a, b)$$ and $$0$$ elsewhere.

The probability density function for a standard normal variable $$Z$$ is:
$$
\phi(z) = \frac{1}{\sqrt{2\pi}}e^{-\frac{1}{2} z^2}
$$
 A variable $$X$$ has standard deviation $$\sigma$$ and mean $$\mu$$ if $$X = \mu + \sigma Z$$.

If a distribution is approximate by a density $$f(x)$$, then the average of a function $$g(x)$$ over the $$n$$ values is approximated by:
$$
\frac{1}{n} \sum_{i=1}^n \approx \int_{-\infty}^{\infty} g(x)f(x) dx
$$
A random time $$T$$ has **exponential distribution** with rate $$\lambda$$ if $$f(t) = \lambda e^{-\lambda t}$$. For the exponential survival function, $$E(T) = SD(T) = \frac{1}{\lambda}$$. The distribution has the **memoryless property**:
$$
P(T > t + s | T > t) = P(T > s)
$$
Here, $\lambda$$ is roughly the death rate. In the context of half lives $$h$$, we can compute $$\lambda = \frac{\log{2}}{h}$$.

If $$T_r$$ is the time of the $$r$$th arrival after time $$0$$ n a Poisson process, then $$T_r$$ is modeled by a **gamma** distribution defined by:
$$
P(T_r > t) = \sum_{k=0}^{r-1} e^{-\lambda t} \frac{(\lambda t)^k}{k!}
$$
and probability density
$$
f_{r, \lambda} (t) = [\tau(r)^-1 \lambda ^r t^{4-1} e^{-\lambda t}] \text{ for } t\geq 0 \text{ where } \tau(r) = \int^\infty_0 t^{r-1}e^{-t} dt
$$

A **change of variable** from $$X$$ to $$Y$$ involves a function $$y = g(x)$$ with nonzero derivative. For a linear function $$y = ax+b$$, the function shrinks the length of every interval by $$|a|$$.
$$
f_{aX+b}(y) = \frac{1}{|a|}f_X(\frac{y-b}{a})
$$
For a one-to-one change of variable $$y = g(x)$$, the density is:
$$
f_Y(y) = f_X(x)/|\frac{dy}{dx}|, y=g(x)
$$
If $$X$$ has the same distribution as $$Y$$, then so do $$g(X)$$ and $$g(Y)$$.

A cumulative distribution function computes $$F(x) = P(X \leq x)$$. For the uniform distribution, the density is $$F(X)$$ on $$(0, 1)$$. CDFs make it easy to compute the distributions of maximum $$X_\max = \max(X_1, ..., X_n)$$ and minimum $$X_\min = \min(X_1, ..., X_n)$$. The CDF of the maximum is $$F_\max (x) = F_1(x) F_2(x) ... F_n(x)$$. For positive random varaibles, $$E(X) = \int^\infty_0 (1-F_L(x))dx$$. We can invert the distribution function to yield $$x = F^{-1}(p)$$. For any CDF $$F$$ with an inverse, $$F^{-1}(U)$$ has CDF $$F$$.

The kth order statistic is denoted $$X_{(k)}$$ The density is given by the probability that one of the $$X$$'s is equal to some $$x$$ times the probability that exactly $$k-1$$ of the others are less than $$k$$:
$$
f_{(k)}(x) = nf(x){n-1 \choose k-1} (F(x))^{k-1} (1-F(x))^{n-k}
$$
The Beta distribution is defined by the density:
$$
\frac{1}{B(r, s)} x^{r-1} (1-x)^{s-1} \text{ with } B(r, s) = \int_0^1 x^{r-1} (1-x)^{s-1} dx = \frac{(r-1)!(s-1)!}{(r+s-1)!}
$$
We also have $$E(X) = \frac{r}{r+s}$$.

## Continuous Joint Distribution

The **joint distribution** for a pair of RVs $$X$$ and $$Y$$ is defined by $$P(B) = P((X, Y) \in B)$$ where $$B$$ is a subset of over the plane. If $$X$$ and $$Y$$ are uniform, independent RVs, then $$(X, Y)$$ is uniformly distributed on a rectangle. Uniform distributions can extend into an arbitrary number of dimensions with $$n$$ independent random variables $$U_1, ..., U_n$$.

The join probability density function $f(x, y)$ behaves similarly to the one-dimension density function:
$$
P((X, Y) \in B) = \int_{ B}\int f(x, y) dx dy
$$
The infinitesimal probability is:
$$
P(X \in dx, Y \ in dy) = f(x, y) dx dy
$$
The nonnegative and total integral 1 constraints continue to apply. For independent RVs $$X$$ and $$Y$$, the joint density is $$f(x, y) =f_X(x) f_Y(y)$$. The expectation of a function of $$(X, Y)$$ is:
$$
E(g(X, Y)) = \int\int g(x, y)f(x, y) dx dy
$$

## Independent Normal  Variables

For two normal, independent variables $$X$$ and $$Y$$ with the same normal distribution. the joint density is:
$$
f(x, y) = \phi(x)\phi(y) = c^2 e^{-\frac{1}{2} (x^2 + y^2)}
$$
If we consider the random variable $$R = X^2 + Y^2$$, we find that:
$$
f_R(r) = 2\pi rc^2e^{-\frac{1}{2}r^2}
$$
The integral must be 1, which lets us calculate $$c = 1/\sqrt{2\pi}$$. We can also use $$S = E(X^2) = \frac{1}{2}E(R^2)$$ to compute
$$
f_S(s) = f_R(r) / \frac{ds}{dr} = \frac{1}{2}e^{-\frac{1}{2}s}, E(S) = 2
$$
If $$X$$ and $$Y$$ are normal distributions with parameters $$(\lambda, \sigma^2)$$ and $$(\mu, \gamma^2)$$, then $$X+Y$$ has normal $$(\lambda + \mu, \sigma^2 + \gamma^2)$$ distribution.

We derive the chi-square distribution with $$n$$ degrees of freedom and apply skewness correction as follows:
$$
f_{R^2_n}(t) = (2^{n/2} \tau(n/2))^{-1}t^{(n/2)-1}e^{-t/2}, P(R_n^2 \leq x) \approx \Phi(z) - \frac{\sqrt{2}}{3\sqrt{n}} (z^2 - 1)\phi(z), z = (x-n)/\sqrt{2n}
$$

## Operations

In the discrete case for the sum of RVs is:
$$
P(X + Y = z) \sum_x P(X = x, Y = z-x)
$$
We can reformulate these in terms of densities, where the second equation holds for independent RVs:
$$
f_{X+Y}(z) = \int^\infty_{-\infty} f(x, z-x)dx = \int^\infty_{-\infty} f_X(x) f_Y(z-x)dx
$$
![](/images/classes/stat134/sums.PNG)

The density of the sum of $$n$$ independent uniform variables rapidly becomes normal as $$n$$ increases, The distribution of the ratio follows:
$$
f_{Y/X} (z) = \int^{\infty}_{-\infty} |x| f(x, xz) dx
$$

## Dependence

Dependence between two variables can be understand as the marginal distribution of $$X$$ and conditional distribution of $$Y$$. The distribution of $$Y$$ can be computed as a weighted average while the condition distribution of $$X$$ given $$Y$$ can be found via Bayes rule.
$$
P(Y=y) = \sum_x P(Y=y|X = x)P(X = x), P(X = x, Y = y) = \frac{P(X=x, Y=y)}{P(Y=y)}
$$
The expectation of $$Y$$ given an event $$A$$ is:
$$
E(Y | A) = \sum_y yP(Y = y | A)
$$
Some properties:
$$
E(X + Y | A) = E(X | A) + E(Y | A)
$$

$$
E(Y) = \sum_x E(Y | X=x) P(X = x)
$$

$$
E(Y) = E[E(Y | X)]
$$

With infinitesimals:
$$
P(A | X = x) = \frac{P(A, X \in dx)}{P(X \in dx)}, P(A) = \int P(A | X=x) f_X(x) dx
$$
The conditional density is calculated as:
$$
f_Y(y | X=x) = f(x, y)/f_X(x), f(x, y) = f_X(x) f_Y(y | X=x)
$$

$$
E[g(Y)] = \int E[g(Y) | X =x] f_X(x) dx 
$$

## Covariance and Correlation

Covariance is defined as $$Cov(X, Y) = E[(X -\mu_X)(Y - \mu_Y)] = E(XY) - E(X) E(Y)$$. For indicators $$E(I_A) = P(A)$$ and $$E(I_B) = P(B)$$, we have $$Cov(I_A, I_B) = P(AB) - P(A)P(B)$$. Notice that the sign of covariance indicates the direction of dependence. Correlation is defined as $$Corr(X, Y) = \frac{Cov(X, Y)}{SD(X)SD(Y)}$$. Two variables are uncorrelated if $$Corr(X, Y) = Cov(X, Y) = 0$$ or $$E(XY) = E(X)E(Y)$$. The variance of the sum of $$n$$ variables is:
$$
Var(\sum_k X_k) = \sum_k Var(X_k) + 2\sum_{j<k} Cov(X_j, X_k)
$$
Covirance is bilinear:
$$
Cov(\sum_i a_i X_i, \sum_j b_jY_j) = \sum_i \sum_j a_i b_j Cov(X_i, Y_j)
$$
$$X$$ and $$Y$$ have standard bivariate normal distribution if $$Y = pX + \sqrt{1-p^2} Z$$ where $$Z$$ is an independent standard normal variable. Given $$X=x$$, $$Y = normal(px + 1-p^2)$$, and vice versa. For independent normal variables $$Z_i$$, the joint distribution of $$V = \sum_i a_iZ_i$$ and $$W = \sum_i b_iZ_i$$ is bivariate normal and independent only if they are uncorrelated.

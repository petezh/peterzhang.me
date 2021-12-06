---
title: 'Notes: ECON 101B / Macroeconomics'
date: 2021-05-10
permalink: /notes/econ101b
tags:
  - class notes
  - economics
---

These notes are for Spring 2021's [Economics 101B: Macroeconomics](https://classes.berkeley.edu/content/2020-spring-econ-101b-001-lec-001), based on Sanjay K Chugh's *Modern Macroeconomics*.

Midterm
===

## Chapter 1: Microeconomics of Consumer Theory

Utility functions track the *relative* well-being that consumers receive from consuming various goods. **Indifference curves** are sets of goods that possess the same utility. When indifference curves are convex, they experience **diminishing marginal utility**. The slope of the curve is the **marginal rate of substitution.** Consumers are limited by a **budget constraint** of the form $$P_1c_1 + P_2c_2 = Y$$.

To maximize utility subject to the budget constraint, construct a Lagrangian of the form $$L(c_1, c_2, \lambda) = u(c_1, c_2) + \lambda[Y - P_1c_1 - P_2c_2]$$. It's equivalent to finding the bundle where the budget constraint is tangential to an indifference curve.

![](/images/classes/econ101a/indifference.jpg)

## Chapter 3: Dynamic Consumption-Savings Framework

Actions like borrowing (or **dissaving**) relate to the **intertemporal** choices of individual. We can consider a model with two time periods and a simple utility function $$(c_1, c_2) = \ln c_1 + \ln c_2$$.

Income is the receipt of money over a time period, and the main sources are **labor income** and **interest income**.  We can model a labor income of $$Y_1$$ dollars and an interest $$i$$ on initial wealth $$A_0$$. Letting $$A_1$$ denote savings, we have
$$
P_1c_1 + A_1 = (1+i)A_0 + Y_1
$$
for period one. Analogously, we have
$$
P_2c_2 + A_2 = (1+i)A_1 + Y_2
$$
for period 2, where $$A_2$$ is assumed to be $$0$$.

An individual's **private savings in a given time period** is the difference between income and expenditures over that period. The private savings in period 1 is $$S_1^{priv} = iA_0 + Y_1 - P_1c_1$$, and is a measure of **change in wealth**.

Wealth $$A_1$$ links the two periods, and if consumers were rational and had perfect foresight, then an individual in the **two-period model** decides on consumptions and savings for both periods at the beginning of period 1. We can combine the two budget constraints by rearranging the second budget constraint to get
$$
A_1 = \frac{P_2c_2}{1+i} - \frac{Y_2}{1+i}
$$
which we can substitute back in to yield
$$
P_1c_1 + \frac{P_2c_2}{1+i} = Y_1 + \frac{Y_2}{1+i} + (1+i)A_0
$$
which is the **lifetime budget constraint** (LBC). The right hand represents the **present discounted value of lifetime resources**, and the left hand is the **present discounted value of lifetime consumption**.

Graphing $$c_1$$ against $$c_2$$, we get a LBC slope of $$\frac{-P_1(1+i)}{P_2}$$, which makes sense since relative prices are adjusted for interest rates. Graphically, you will see that consumption above the labor income in one period must be balanced out by consumption lower than income in another. Moreover, interest income is ignored because wealth is simply used to transfer resources over time.

![](/images/classes/econ101a/temporalbudget.jpg)

Similarly, utility is maximized when the budget constraint is tangential to the utility curve.

![](/images/classes/econ101a/temporalutility.jpg)

In a stock and flow model, **stock variables** are measurements that occur at a particular moment in time while **flow variables** occur over the course of an interval.

## Chapter 4. Inflation and Interest Rates

**Inflation** is the rise in price overtime and is defined by $$\pi_t = \frac{P_t - P_{t-1}}{P_{t-1}}$$. **Deflation** is a period where $$\pi < 0$$ and **disinflation** happens when $$pi$$ is decreasing. Under inflation, a dollar next year has less purchasing power then it has right now. The **real interest rate** measures this by using an index of goods: the nominal price may be increasing, but goods themselves may be getting cheaper.

The **Fisher equation** describes the relationship between nominal interest rate $$i$$, real interest rate $$r$$, and inflation as $$(1+i_t) = (1+r_t)(1+\pi_t)$$. Use a logarithm approximation trick, $$r = i - \pi$$ for small values. Although transactions usually refer to nominal interest rates, real interest rates drive macroeconomic trends

If we take the nominal LBC $$P_1c_1 + \frac{P_2c_2}{1+i} = Y_1 + \frac{Y_2}{1+i} + (1+i)A_0$$ and divide by $$P_1$$ we get $$c_1 + \frac{P_2}{P_1} \cdot \frac{c_2}{1+i} = y_1 + y_2 \cdot \frac{P_2}{P_1} \cdot \frac{1}{1+i} + (1+i) \cdot \frac{A_0}{P_1}$$. Replacing $$\frac{P_1}{P_2}$$ with inflation and defining real net wealth $$a_0 = \frac{A_0}{P_0}$$, we apply the Fisher equation to yield
$$
c_1 + \frac{c_2}{1+r} = y_1 + \frac{y_2}{1+r} + (1+r)a_0
$$
so we have **real consumption** and **real net wealth**. Converting to slope intercept form yields
$$
c_2 = -(1+r)c_1 + (1+r)y_1 + y_2
$$
and we can also calculate **real private savings** as $$s_1^{priv} = ra_0 + y_1 - c_1$$. 

Notice that the slope equation suggests that an increase in the real interest rate increases consumption of future goods and private savings. But, depending on the shape of the indifference curve, a rising interest rate can either increase or decrease private savings. Empirically studies confirm that the actual relationship between the two is weak.

Now, returning to the two-point model, we can build a Lagrangian model $$u(c_1, c_2) + \lambda[Y_1 + \frac{Y_2}{1+i} - P_1c_1 - \frac{P_2c_2}{1+i}]$$. Solving, we find that $$\frac{du/dc_1}{du/duc_2} = 1+r$$, which is the **consumption-savings optimality condition**. We could also take a sequential approach and reach the same condition.

**Consumption smoothing** is an underlying theme of multi-period utility maximization. Since lifetime utility is strictly increasing and concave, individuals prefer consumption to be relatively stable. Moreover, consumption can be similar despite different income streams because of the ability to borrow.

*Not in book:* The Euler equation relates the MRS between consumption in different time periods to the real interest rate:
$$
\frac{u_1(c_1^*, c_2^*)}{u_2(c_1^*, c_2^*)} = 1+r
$$


## Chapter 6. Firms

The firm is a price-taker in goods, labor, and capital markets. Its **profit maximizing decisions** occur at the start of period 1 and apply for both periods. It must maximize a **dynamic profit function**. In each period, a firm uses labor and capital to produce final goods.

**Capital goods** are physical goods like machines, factories, and computers that are used in the production of others goods. They are **stock quantities**, so they take time to build up. As a result, purchased capital in period 1 will not be ready until period 2. The **time-to-build** distinguishes capital and labor.

The production function $$y = f(k, n)$$ describes the output of labor $$n$$ and capital $$k$$. We assume strictly increasing production in both inputs and a decreasing rate of transformation from each input into output. The result is a **positive marginal product** and **diminishing marginal product** for each input. The **life time profit function is**:
$$
P_1f(k_1, n_1) - P_1(k_2-k_1) - P_1w_1n_1 + \frac{P_2f(k_2, n_2)}{1+i} - \frac{P_2(k_3 - k_2)}{1+i} - \frac{P_2w_2n_2}{1+i}
$$
where $$P_1$$ and $$P_2$$ correspond to final good prices, $$w_1$$ and $$w_2$$ correspond to wages, $$i$$ is the nominal interest rate, and $$k_1, k_2, k_3$$ are the accumulated capital.

Using the first order conditions, we derive that $$w_1 = f_n(k_1, n_1)$$ and $$w_2 = f_n(k_2, n_2)$$, which means that firms optimize labor such that the marginal product of labor is equal to the market wage. As a result, the marginal product of labor and optimal wage strictly decrease as $$n$$ increases.

**Net investment** is $$k_{n+1} - k_{n}$$, the change in capital between two periods. **Economic depreciation** is the wearing out of capital goods during production (and roughly 8% depreciates each year, so $$\delta = 8$$). Gross investment is $$inv^{gross} = inv + \delta k$$ and is used to measure GDP. However, the depreciation **rate** is constant over time and so qualitative analyses can ignore depreciation.

Although it would be more realistic to have a separate price for capital goods, they can often overlap with final goods and the real price is the **real interest rate**. A firm decides how much capital it would like to have in the future. The first order condition is $$r = f_k(k_2, n_2) = mpk$$. Regardless of whether the firm is borrowing or paying out of hand, short-term spending on capital is decided by the real interest rate. The relationship between $$r$$ and investment is the **market capital investment function**.

The **intertemporal price r** is the most relevant for investment. Changes in $$P_1$$ directly change $$r$$ if $$P_2$$ and $$i$$ are constant.

## Chapter 25. Solow Growth Framework

Real GDP per capita is the main metric used to judge standards of living. **Convergence** suggests that over time, per-capita GDP should equalize over countries, although the empirical evidence is mixed. The Solow framework explains growth by using exogenous factors to model the transformation of inputs into outputs. After **de-trending** the model, we compute long-run capital stock.

Long-run growth factors are exogenous to the economy. The first main factor is population growth $$gr_{N} = \frac{N_{t+1} - N_t}{N_t}$$. The second main factor is productivity, which is considered **labor-augmenting**, denoted by $$gr_X = \frac{X_{t+1}-X_t}{X_t}$$.

Cobbs-Douglas production function is $$Y_t = K_t^\alpha (X_tN_t)^{1-\alpha}$$. If $$\alpha$$ is close to zero, an economy is labor intensive. If $$\alpha$$ is close to one, an economy is capital intensive.

The Solow model is a closed-economy structure, meaning that the GDP account equation is a resource frontier. Government spending is ignored so that the resource constraint is $$Y_t = C_t + I_t$$, while savings is the source of investment $$S_t = I_t$$. The framework dictates that aggregate saving is a constant fraction $$s$$ of GDP so that $$S_t = s \cdot Y_t$$. Aggregate gross investment is $$I_t = K_{t+1} - (1-\delta) K_t$$, where $$\delta$$ is the rate of depreciation.

Notice $$I_t = sY_t$$ and substitute to get $$K_{t+1} - (1-\delta)K_t = sY_t$$. Scale by denoting **per unit of effective labor** variables $$y_t$$ and $$k_t$$. We then write $$y_t = k_t^\alpha$$, suggesting that production has diminishing marginal product in capital. The **equilibrium law of motion for the (per-capita) capital stock** is:

$$k_{t+1} = \frac{s\cdot k_t^\alpha}{(1+gr_X)\cdot (1+gr_N)} + \frac{(1-\delta)k_t}{(1+gr_X)(1+gr_N)}$$

suggesting that capital is completely determined by previous capital. So, we can rewrite:
$$
k^* = [\frac{s}{(1+gr_X)(1+gr_N)-(1-\delta)}]^{1/(1-\alpha)}
$$

In the long term, the economy moves towards the steady state.

The Solow model predicts that countries converge to steady states, but not all economies have the same per-capita capital stocks. It also suggests an eventual zero growth state, but the empirical consensus is that advanced economies have not stopped growing. 

Final
===

## Chapter 26: Neoclassical Growth

While the Solow growth framework assumes a constant savings rate as an exogenous parameter, the **neoclassical growth framework** determines the savings rate **endogenously** through a **consumption-savings optimality condition**, maximizing lifetime utility
$$
\max \sum^\infty_{t=1} \beta^{t-1} u(c_t)
$$
subject to
$$
c_t + k_{t+1} - (1-\delta)k_t = k_t^\alpha
$$


Solving the Lagrangian yields the optimality condition
$$
\frac{u'(c_t)}{\beta u'(c_{t+1})} = 1 + \alpha k^{\alpha -1}_{t+1} - \delta
$$
where the left hand side is the marginal cross-period rate of substitution and the right hand side is the gross real return on physical capital.

We reach equilibrium whenever aggregate savings equals aggregate investment, with steady state expression
$$
\frac{1}{\beta} = 1 + \alpha(k^*)^{\alpha -1}-\delta
$$
yielding
$$
k^*_{\text{neo}} = [\frac{1}{\alpha} (\frac{1}{\beta} - (1-\delta))]^{1/(\alpha -1)}
$$
which contains the discount factor. We can also rearrange to yield
$$
c^*_{\text{neo}} = [\frac{1}{\alpha} (\frac{1}{\beta} - (1-\delta))]^{\alpha/(\alpha -1)} + \delta [\frac{1}{\alpha} (\frac{1}{\beta} - (1-\delta))]^{1/(\alpha -1)}
$$
and a long-run savings rate of
$$
s = \frac{\delta k^*}{y} = \delta (k^*)^{1-\alpha}
$$
The Golden Rule (maximizing long run consumption) yields a higher savings rate than the neoclassical model, which maximizes lifetime utility.

In the long term, aggregate economic activity tends to settle down. Although business cycles induce ups and downs, the average is the long run. The consumption-savings optimality condition at the heart of macro is
$$
\frac{1}{\beta} = 1+r
$$
relating the subjective discount factor to the real interest rate. The modern view is that impatience induced a positive real interest rate.

*Side note: Examples of TFP includes technology, education, misallocation, management institutions, financial development, culture, political stability, regulations, and more!*

#### Chapter 6: Dynamic Firms

A **firm** makes **profit-maximizing decisions** at the beginning across all period, using labor and capital goods to produce final goods. Capital goods include machines, factories, computers, trucks, and more; crucially, it is a **accumulation (stock) quantity**, so it takes time to build up. If we invest in capital at the beginning of period 1, then the capital will not be ready until period 2. Production is subject to a **positive, diminishing marginal product** with respect to each input.

The **dynamic/lifetime/intertemporal profit function** is
$$
\sum_t P_t f(k_t) - P_t(k_{t+1} - k_t) - P_t w_t n_t
$$
representing the profit from production minus the costs of capital and labor.

The FOCs yield two insights. First, $$w_t = f_n(k_t, n_t)$$. Firms choose a quantity of labor such that the real wage is equal to the marginal product of labor.  Second, $$f_k(k_t, n_t) = r$$. Firms choose an amount of future capital such that the real interest rate is equal to the marginal product of capital.

Natural experiments from post-WWII college education and the black death suggest that decreases in a factor increase marginal product and income.

Some relationships:

- Capital stock increases (e.g. from FDI) → capital/labor ratio increases → MLP increases → MPK decreases
- TFP increases (e.g. from innovation) → MPL increases & MPK increases
- Labor increases (e.g. from immigration) → capital/labor ratio decreases → MPK increases
  - Experiments show that MPK may increase enough that wages don't decrease

## Chapter 7: Fiscal Policy

Fiscal gap is comprised of formal debt and debt-like liabilities (such as pensions, social security, etc.), minus government revenues. A **fiscal surplus** denotes positive government savings. A **fiscal deficit** denotes negative government savings.

**Ricardian equivalence** states that if the government spends along a fixed path, the timing of taxes does not affect national savings or the equilibrium real interest rate. Individuals anticipate an increase in future taxes, so they save the full tax cut, independent of their preferences.

The government can finance spending through taxes and debt. We have the budget constraints:
$$
g_1 + b_1 = (1+r) b_0 + t_1\\
g_2 + b_2 = (1+r) b_1 + t_2
$$
which can combine and rearrange to yield the LBC
$$
g_1 + \frac{g_2}{1+r} = t_1 + \frac{t_2}{1+r} + (1+r)b_0
$$
which is analogous to the consumer LBC. Combining the two yields the **economy-wide resource frontier**:
$$
c_1 + \frac{c_2}(1+r) = y_1 - g_1 + \frac{y_2 - g_2}{1+r} + (1+r)(a_0 + b_0)
$$
and national savings
$$
s_{\text{nat}} = s_{\text{priv}} + s_{\text{govt}} = y - t -c + t - g = y +-c - g
$$
which clarifies how private savings and government savings oppose one another. This serves as the basis for the Ricardian equivalence theorem.

In practice, tax rebates are often saved. Consumers are myopic, face borrowing constraints, and may ignore future generation. Ricardian equivalence is a *theoretical benchmark*.

## Chapter 2: Labor Markets

Labor is relevant for household budget constraints and individual utility functions. For a household, we equate consumption plus investment to the sum of labor and capital income:
$$
GDP_t = C_t + A_T - A_{t-1} = iA_{t-1} + Y_t
$$
Since assets are concentrated in a handful of households, the mean household receives more capital income than the median household. **Asset pricing** calculates the price of an asset based on the present value of future income streams. We can measure **human capital** by summing the present value of salaries.

A household's **labor supply decision** involves education, work location, work hours, and more. The **Mincer model** presumes that wages scale linearly with the level of skill:
$$
W_t = p_t^E\cdot S_t
$$
where an individual can grow their inherited skill $$S_0$$ at rate $$\alpha$$ while in school
$$
S_t = (1+\alpha)S_{t-1}
$$
so that an individual stays in school until the marginal effect on lifetime income equals the opportunity cost of staying in school. Since $$Pc = Y$$ and $$n = 1-l$$, we have $$Pc + Wl = W$$. Taking the Lagrangian, we can conclude that the $$\text{MRS} = \frac{W}{P}$$.

## Chapter 11: Labor Supply and Macroeconomic Institutions

Ricardian Equivalence says that *Rational consumers understand that a tax cut today means a tax increase in the future so the entire tax cut is saved.* It is a benchmark result, similar to perfect competition, relying on **lump-sum taxes**, where the total incidence doesn't depend on individual choices.

A **proportional tax** or distortionary tax taxes based on consumption. If the relative tax on different goods changes, then sales tax distorts consumption between the two goods. The distortion can also prompt consumers to adopt untaxed choices like leisure. The **Laffer curve** is based on tradeoff between the tax rate and the tax base and is supported by cross-country evidence. But, very few ecnomists think cutting income tax can increase tax revenue.

## Chapter 15: Money and Bonds

Money is **neutral** if changes in money supply do not effect the real economy; this is the Classical view. The **Keynesian** view is that money is non-neutral because prices are sticky.

Money is a medium of exchange, a unit of account, and a store of value. We use the **money-in-the-utility-function** formulation
$$
u(c_t, \frac{M^D_t}{P_t})
$$
where $$P_t$$ is measured in $ per consumption.

A **bond** is a debt obligation over some period that is repaid with interest. The price of a bond has an inverse relationship with the nominal interest rate so that
$$
P_t^b = \frac{1}{1 + i_t}
$$
where $$i$$ is the price of money, or the opportunity cost of holding money. Expansionary monetary policy purchases short bonds by printing new money, which decreases short-term $$i$$. Contractionary monetary policy involves selling short bonds in exchange for money, which increases short-term $$i$$.

In the new framework, we introduce the asset classes of stocks, short-term bonds, and money so that
$$
P_tc_t + P_t^b B_T + M_t + S_t a_t = Y_t + M_{t-1} + B_{t-1} + S_ta_{t-1} + D_ta_{t-1}
$$
which can be used to craft an intertemporal maximization problem. Computing the FOC with respect the price of stock $$a_t$$, we arrive at the **stock-pricing equation** 
$$
S_t = (\frac{\beta \lambda_{t+1}}{\lambda_t})(S_{t+1} + D_{t+1})
$$
Computing the FOC with respect to bond prices yields the **bond-pricing equation**
$$
P_t^b = \frac{\beta \lambda_{t+1}}{\lambda_t}
$$
Bonds are a riskless asset while stocks are a risky asset. Real money demand is described by
$$
\frac{M_t}{P_t} = c_t \cdot (\frac{1+i_t}{i_t})
$$
Support consumers plan for some level of $$M_t$$. After a money shock, a Keynesian view suggests prices cannot adjust, so consumption must rise. In the long run, the rate of money growth is equal to the rate of inflation so that $$\mu = \pi$$.

## Chapter 16: Fiscal and Monetary Interactions

The fiscal authorities budget constraint is
$$
P_tg_t + B_{t-1}^T = T_t + P_t^B B_t^T + \text{RCB}
$$
where $$B_t$$ is the total amount that Congress sells in period $$t$$ and RCB is the profits turned over from the central bank. Since 2007, government assets has expanded to include **government sponsored enterprises** (GSEs) and **mortgage backed securities** (MBS). The consolidated flow constraint highlights the fiscal ($$g_t, T_t, B_t$$) and monetary ($$M_t$$) tools available to the government.
$$
P_tg_t + B_{t-1} = T_t + P_T^B B_t + M_t - M_{t-1}
$$
An authority is **active** if *every* instrument can be freely chosen without concern for the budget constraint; otherwise, it is **passive**. One of the authorities (fiscal or monetary) has to ensure the GBC holds (usually monetary). Printing money yields **seignorage revenue**, an important source of revenue in developing countries. The lifetime consolidated GBC is that the  real value of government debt must equal the present discounted value of all fiscal surpluses and seignorage revenues.

A **Ricardian** fiscal policy has no impact on monetary policy. Otherwise, if the authority changes the timing of collection, the adjustment must induce a change in price. Developing countries often experience **FTPL**, a sudden rise in inflation, while developed countries experience **FTI**, a long and sustained rise. Inflation and seignorage tend to be lower in countries with greater central bank independence.
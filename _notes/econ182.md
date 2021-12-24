---
title: 'Notes: ECON 182 / International Monetary Economics'
date: 2021-12-15
permalink: /notes/econ182
tags:
  - class notes
  - economics
---

~~I~~ My friend Lauren took these notes for [ECON 182: International Monetary Economics](https://classes.berkeley.edu/content/2021-fall-econ-182-001-lec-001) taught by Maurice Obstfeld. I PNP'd this class, so I'm not sure if the content below is accurate. I gave up after the midterm. Cool content though.

Midterm
===

## National Income Accounting

**National income** is the income earned by national factors of production. **Gross national product** (GNP) refers to all final goods and services produce by those factors of production:

$$GNP = C + I + G + CA$$

GNP must be adjsuted for depreciation and unilateral transfers (foreign aid, reparations, pensions, etc). In contrast, **gross domestic product** refers to final goods/services produced *in* a country.

$$GDP = GNP - \text{Foreign payments for production} + \text{Payments to foreign} - \text{Unilateral transfer payments}$$

Exports increase net foreign wealth, while imports decrease it.

Savings is gross national product minus consumption and government spending:

$$S = Y - C - G = I + CA$$

Savings can be subdivded into **private savings** (saved disposable income) and **government savings** (net tax revenue):

$$S = S^p + S^p = (Y - T - C) + (T - G)$$

## Balance of Payments

A **credit** increases a liability/equity account or decreases an asset/expense account, while a **debit** increases an asset/expense account or decreases a liability/equity account. Debits are *inflows*, credits are *outflows*.

1. **Current account**: Flows of goods and services in imports and exports.
2. **Financial account**: Flows of financial assets in financial transactions.
3. **Capital account**: Non-market intangibles, e.g. debt forgiveness, copyrights, trademarks.

<details>
<summary>Examples of Accounting</summary>
<br>
1. Suppose you import a fax machine from Olivetti and Olivetti deposits the check in a U.S. bank. The current account decreases by $1,000 and the financial account increases by $1,000.
2. You buy lunch in France and pay by credit card, which is recieved from a U.S. bank. The current account decreases by $200 and the financial account increases by $200.
3. You buy a share of BP, which deposits the money in a bank. The cfinancial account decreases by $95 from the stock purchase but increases by $95 from the deposit.
</details>

## Foreign Exchange

**Depreciation** and **appreciation** refer to decreases and increases int he value of a currency, respectively. The **terms of trade** are the price of imports in terms of exports. A higher relative import price denotes worse terms of trades.

Foreign exchange (forex) markets are comprised of commercial banks, non=-bank financial institutions (hedge funds, mutual funds, insurance, pension funds), non-financial businessses, and central banks.

**Spot rates** refer to exchange rates *on the spot*. **Forward rates** apply for some future exchange, often a month to a year in the future. Other derivatives include foreign exchange swaps, future contracts, and options contracts.

Demand for currency deposits depends on four factors:
1. Rate of return: is the change in value that an asset return.
2. **Real rate of return**: Adjusted for inflation, which is in turn influenced by interest rates and expectations.
3. **Risk**: E.g. if uncorrelated with economy.
4. **Liquidity**: Ease of usage.

The **uncovered interest parity** (UIP) condition states that interest rates in country c ($R_c$) and country b ($R_b$) are identical after adjusting for the exchange rate $E$ and the expect exchange rate $E^e$.

$$R_c = R_b + \frac{E^e - E}{E}$$

An increase in interest rates increases the value of returns and appreciates the currency.

The **covered interest parity** condition relates the forward ($F$) and spot ($E$) exchange rate. It always holds because otherwise, investors could exploit the arbitrage opportunity.

$$R_c = R_b + \frac{F - E}{E}$$

## Money

Money is a store of value, means of payment, and unit of account. **Monetary demand** ($M^d) is the amount of monetary assets people are willing to hold, affected by interest rates, inflation risk, and liquidity. Usually, monetary demand rises with interest rates, prices ($P$), and income ($Y$).

$$M_d = P \times L(R, Y)$$

The **monetary supply** ($M^s$) reaches an equilibrium at $\frac{M^s}{P} = L(R, Y)$. In the long run, wages adjust to prices, in turn impacting labor and real output. Monetary supply rises with excess demand na dinflationary expectations. *Permanent changes in monetary supply cause proportional changes in appreciation/depreciation$*.

Exchange rate **overshoot** refers to the overreaction of exchange rates to monetary supply changes.

## Price Levels

The **Law of One Price** (LOOP) dictates that the same good must sell for the same price in competitive markets when barriers are absent.

$P_c = E * P_b$

**Purchasing power parity** (PPP) applies LOOP for all goods and services. **Absolute PPP** states taht exchange rates equal the level of average prices across countries:

$$E = \frac{P_c}{P_b}$$

**Relative PPP** states that changes in exchange rates mirrors inflation; it's weaker than absolute PPP.

$$\frac{E_t - E_{t-1}}{E_{t-1}} = \pi_c - \pi_b$$

The monetary approach to exchange rates begins with the assumption that $M^S = M^D$. Predictions:
- A permanent increase in money supply depreciates the currency without affecting foreign price level.
- Greater interest rates lower money demand and increase price level, depreciating the  currency.
- Increases in output decrease the price level and appreciate the currency.

The **Fisher effect** states that a rise in domestic inflation causes an equal rise in home interest rate in the long run:

$R_c - R_b = \pi_c - \pi_b$

The effect of interest rates on exchange rates depends on why $R$ rises:
- If nominal interest rates rise due to inflation, the currency depreciates.
- If nominal interest rates rise due to increased real interest rates, the currency appreciates.

After a one-shot rise in $M^s$, the price level $P$ is sticky and pushes the interest rate down.

LOOP might not hold in the presence of trade barriers, imperfect cmopetition, and different baskets. **Balassa-Samuelson theory** speculates that non-tradables and price levels are higher in richer countries. **Bragwan-Krans-Lipsey theory** hypothesizes taht non-tradables are labor-intensive and thereby cheaper in poor countries.

**Real interest rate** is the relative price of goods and services across countries.

$$q = \frac{E \times P_b}{P_c}$$

Increase in relative demand for U.S. products decreases foreign demand. Increase in the relative supply of U.S. goods increases foreign demand.

## Short-Run Output and Exchange Rate

Aggregate demand is determined by consumption $C$, investment $I$, governemnt purchases $G$, and capital balance $CA$.

Consumption is determined by disposable income $Y^d$. The current account is determined by the real exchange rate $\frac{EP^*}{P}$ and disposable income. Usually, a higher exchange rate improves the current account by increase trade volume. Although the relative value of imports will be higher, the **volume effect** usually dominates the **value effect**.

Put together, aggregate demand is expressed as:

$$D(\frac{EP^*}{P}, Y-T, I, G) = C(Y - T) + I + G + CA(\frac{EP^*}{P}, Y-T)$$

The **DD schedule** is *upward sloping* and shows output and exchange rates at short-run equilibriums. The curve shifts right when $\frac{EP^*}{P}$ rises, $Y-T$ falls, $I$ rises, or $G$ rises.

The asset market is determined by the forex and domestic money markets. The **AA schedule** is *downward sloping*. The curve shifts right when $M^s$ rises, $P_c$ falls, $i_b$ rises, or $E$ rises.

The **AA-DD** diagram displays the superequilibrium between the AA and DD schedules.

Monetary policy involves the central bank influencing $M^s$, affecting AA. Fiscal policy involves changing $G$ or $T$, which affects DD.

Fiscal policy can cause crowd out, as a stronger domestic currency can hurt net exports.

**Pass through** is the proportion by which imports change when the value of domestic currency changes. The DD-AA model assumes 100% passthrough, but in reality, firms can decide not to match exchange rate changes, dampening the effect of appreciation/depreciation on the current account.
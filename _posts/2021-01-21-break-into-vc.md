---
title: 'Book Review: #BreakIntoVC'
date: 2021-01-21
permalink: /posts/2021/02/break-into-vc
tags:
  - book review
  - business
---

I just finished Bradley Miles' *#BreakIntoVC*. It's a short, clearly-written book that boils down the essentials of venture capital. The book is sometimes a little disorganized and often moves a little too fast. Nonetheless, provides a great overview the subject for anyone willing to read carefully.

Here's the [paperback](https://www.amazon.com/BreakIntoVC-Investor-Entrepreneur-Professional-Guidebook/dp/1544934343) and [audiobook](https://www.audible.com/pd/BreakInto-VC-Audiobook/B074B2MQ1B).

<img align="right" width="30%" src="/images/books/break_into_vc.jpg">

**Utility**: ⭐⭐ (2/5)

**Writing**: ⭐⭐⭐ (3/5)

Half of the book is devoted to networking, recruiting, and further resources. I was only interested in learning more about venture capital, so those parts are omitted from my notes.

Notes
===

## Industry Overview

### What It Is

Venture capitalists borrow money from **limited partners** (endowments, foundations, pensions, wealthy individuals). They invest in **high-risk startups** and **growing businesses**.

A fund will invest for 3-5 years and then spend another 5 years earning a return on investment. When the current fund is about 75% committed, venture capitalists will start raising a new fund. By always having committed capital, they constantly make returns.

VCs will often continue to invest in companies to prevent dilution of their equity stake. A larger stake translates into greater returns through initial public offerings (**IPOs**) and mergers & acquisitions (**M&As**). Once limited partners receive their investment, the firm earns a proportion of the additional profit, also known as **carried interest**.

## What It Is Not

VC firms are distinct from **angel investors**, who usually invest in their own money. Limited partners invest in VC in order to diversify. They return 25 percent on average, but because of the high risk, they usually comprise less than 15 percent of the portfolio.

VC expect a minority of companies (10-20) to earn huge returns (8-10x). The majority are expected to either fail or return the invested amounts. As a result, the anticipated return on investments usually falls in the 8-10x range. VC firms are looking for companies with few customers, little revenue, and perhaps even no minimum viable product (**MVP**). 

**Growth equity** refers to investments made in later rounds, with a goal of boosting a company to IPO or M&A. They range from $10M to $500M. Since these companies are usually less risky, the target ROI is often 3-5x. Growth equity firms are looking for potential market leaders that may not yet be profitable. These companies have less free clash flow (**FCF**), cash leftover after core expenses.

**Private equity** is similar to growth equity, except firms will take full ownership of a given company. They will then scale that company through acquisitions and growth before selling them off. These deals can involve billions of dollars. PE firms will usually use leveraged buyouts (**LBOs**), where the majority of a purchase is financed by loans. The debts are passed onto the company, so PE firms are looking for profitable companies.

### Venture Debt

Debt is generally unattractive. Contracts can involve **debt covenants**, where companies are required to hit certain metrics to avoid default. They may offer **downside protection** to lenders, where in the event of a **material adverse change**, the firm is no longer obligated to provide further financing.

Venture debt does have its benefits. A company may use it to gain **runway**, creating future value, while avoiding equity dilution.

## Performance Metrics

Monthly recurring revenue (**MRR**) refers to all revenue that is obligated to recur each month. For example, a Software-as-a-Service (**SaaS**) company may have monthly subscribers. The annualized run rate (**ARR**) is just twelve times the MRR.

The **churn rate** refers to customer attribution over a given period. It can also be used in different context to refer to loss.

$$
churn\ rate = \frac{customers\ before - customers\ now}{customers\ now}
$$

The **burn rate** refers to the cash burned in a given period. It is often talked in the context of an industry, such as "ride-share companies tend to have high burn rates."

$$
burn\ rate = \frac{capital\ expended}{time\ frame}
$$

Dollar revenue retention (**DRR**) is a measure of the revenue retained from customers. If your customers are upgrading to a premium plan, then your churn rate may be constant but your DRR may be positive.

$$
DRR = \frac{revenue\ before - revenue\ now}{revenue\ now}
$$

Customer lifetime value (**CLV**) is the projected value of a customer over a lifetime. For example, you could calculate it as follows:

$$
CLV = customer\ revenue\ per\ visit * visits\ per\ week * 52 * customer\ lifespan 
$$

The customer acquisition cost (**CAC**) refers to the cost of acquiring a new customer, including advertising, PR, sales salaries, and other costs.

A target **CLV/CAC ratio** is around 3:1. A ratio of 1.5:1 or 1:1 suggests that a company is overspending on marketing. *Ask for a startup's CLV to CAC ratio.*

Another relevant metric is the **CAC payback period**, which refers to how long it takes to recover the costs of acquiring a customer. The CAC is $1000 and a customer yields $500 in revenue a year, the payback period is 2 years.

## Accounting

### Income Statement

The **income statement** is also referred to as the profit and loss (P&L) statement. It presents the profitability of a company over a year or quarter.

The **gross revenue** is the money taken in from selling goods and services. For a marketplace, it represents the total of value of transactions, or gross transaction value (**GTV**). They may have a **take rate** of only 15 percent, so the that proportion of the GTV is the **net revenue.**

The cost of goods sold (**COGS**) includes raw materials, labor, or manufacturing costs. Subtracting COGS from net revenue yields **gross profit**. **Gross margin** is the profitability ratio and is measured as follows:

$$
Gross\ Margin\ (\%) = \frac{Revenue - COGS}{Revenue}
$$

Operating expenses (**OPEX**) encompasses sales, general & administrative expenses (**SG&A**) and research & development (**R&D**). SG&A includes the costs of advertising, facility maintenance, and executive salaries. R&D refers to innovation practices, such as hiring scientists and engineers.

**EBITDA** refers to earnings before interest, tax, depreciation, and amortization. Companies have different tax rates and interest accounting methods, so EDITBA provides an apples to apples comparison. It is the result of subtracting OPEX from gross profit.

$$
EDITBA = gross\ profit - OPEX
$$

**EBIT** is EBITDA minus depreciation and amortization (**D&A**). Depreciation and amortization are similar — they refer to the declining value of tangible and intangible goods, respectively. The most common way to measure D&A is **straight-line depreciation**, expressed as follows:

$$
Depreciation\ Expense = \frac{Asset\ Cost - Salvage\ Value}{Useful\ Life}
$$

EBIT is also referred to as **operating profit**. There are some differences between the two, but in VC, they often treated the same. We can now calculate the operating margin as well:

$$
Operating\ Margin = Operating\ Profit / Revenue
$$

Companies will often have interest expenses from bonds loans, or other lines of credit. They may also make interest income from investments. **Net interest expense** is the interest expense minus interest income. Accounting for interest leaves us with **pre-tax income**.

All companies pay **income tax** and corporate tax is usually about 40 percent. Accounting for taxes yields the **net income**. Below is an example of a full income statement,

![](/resources/income_statement.png)

### Balance Sheet

A balance sheet is defined by:

$$
Assets = Liabilities + Equity
$$

**Assets** are things the company owns, such as machinery, land, factories, cash, and accounts receivable. Balance sheets will differentiate between **long-term assets** (such as factories or land) and **current access** (such as cash and inventory).

**Liabilities** are things the company owes, including accounts payable, salaries payable, interest payable, and non-current liabilities.

**Working capital** refers to the ability to cover short term liabilities, defined as follows:

$$
Working\ Capital = Current\ Assets - Current\ Liabilities
$$

**Equity** is a claim on the company's assets. **Book value** is the assets of a company minus its liabilities. Rearranging the equation at the top:

$$
Equity = Assets - Liabilities
$$

The **par value** is the floor value of a stock. The number of shares multiplied at the par value is the **common stock value**. Investors will pay **additional paid-in capital** over the par value to purchase stocks. If a company buys back its own stocks, it is called **treasury stock**. On the balance sheet, this represents a **contra-equity** account, decreasing shareholder's equity and altering cash on the asset side.

**Dividends** are payments made to shareholders. **Retained earnings** are the end state of the money.

$$
REnew = REoriginal + Net\ Income - Dividends
$$

**Bookings** are commitments by the customer to purchase a good. It becomes **recognized revenue** when the company provides a good or service. **Collections** occur when the money is collected from the customer. If the company collects immediate revenue for a long-term subscription, it is considered **deferred revenue**, since if the company were to go bankrupt, the services would not be delivered and the revenue would not be recognized. The **book-to-bill** ratio is a metric of financial health. If a companies has over $1 in revenue for each $1 of bookings, there is strong demand.

### Cash Flow Statement

A **cash flow statement** display cash inflows and cash outflows in a given period. Cash flow from operations (**CFO**) refers to cash brought in from the sale of goods. Net income is the same as the one on the income statement. **Changes in working capital** refer to difference in assets and liabilities across periods.

Cash flow from investing (**CFI**) are flows from buying and selling long-term assets like buildings and machinery, referred to as **property, plant, and equipment (PP&E)**.

Cash flow from financing (**CFF**) are cash flows between companies and creditors.

## Valuation

The **IRR** is the annual rate of return. It accounts for all cash flows, making the **net present value** of cash inflows and outflows zero. In the context of IRR, investors usually adopt a five-year horizon.

**Valuation** provides a football field of values. **Post-money** valuation is the value after money is invested, and the opposite describes **pre-money** valuation.

**Primary shares** are issued for investors from the companies. **Secondary shares** refer to transfers between two individuals.

**Enterprise value** is the value of an entire firm. It is calculated as:

$$
Enterprise\ Value = Equity\ Value + Debt - Cash + Minority\ Interest
$$

**Equity** is the total value of company stock. **Debt** is what a company owes. **Cash** basically subsidizes the cost. **Minority interest** refers to equities of subsidiaries that parent companies don't own.

### DCF

Discounted cash flow (**DCF**) refers to the converting future cash flow to present day dollars. Free cash flow (**FCF**) refers to the spending money of a company after core expenses are paid. The **discount rate** we use is the weighted average cost of capital, or the return that equity owners expect from a company. DCF analysis sums and discounts future cash flows and adds the terminal year value.

### Comps

Comparable company analysis or "**comps**" is another way to value a company. By calculating the **EV/EBITDA** multiple of similar companies, you can estimate the enterprise value from a target companies' EBITDA. A range of comps will give us bear and bull multiples.

Precedent transactions analysis (**PTA**) focuses on transactions that have already occurred. PTA can overvalue companies because they are usually sold at a **control premium**. It also has a restricted time frame, since only deals within the last five years reflect current market conditions.

### ABV

**Asset-based valuation** is used for companies with no cash flow and who plan to liquidate their assets. It is useful when tangible and intangible assets comprise the majority of the company's value.
$$
Asset\ Based\ Valuation = Assets - Liabilities
$$

### VC Method

The **venture capital method** involves estimating the target's revenue at the nth year, identifying industry multiples from similar companies, and using the two calculate the enterprise value. Then, the enterprise value is divided by the anticipated ROI, which is usually around 30x for seed stage companies.

$$
Post\ Money\ Valuation = Enterprise\ Value\ / Anticipated\ ROI
$$

Because the value of shares increases at a slower rate than the valuation of the company, investors will usually make less than the anticipated ROI. After accounting for **valuation divergence**, the real ROI may drop from 30x to 5-10x.

### Chicago Method

The **Chicago Method** assumes a 5x return in five years with a WACC of 40 percent. It estimates bull, bear, and base cases for DCF and assigns each a probability. Calculating the expected value yields the valuation.

### Berkus Method

**Berkus valuation** adds 500K in valuation for each of the following:

1. Sound Idea (basic value, product risk)
2. Prototype (reducing tech risk)
3. Quality Management Team (reducing execution risk)
4. Strategic Relationships (reducing market risk and competitive risk)
5. Product Rollout or Sales (reducing financial or production risk)

Since pre-revenue companies would likely be unable to achieve 5, they are functionally capped at $2M valuation.

### Risk Factor Summation Method

The **risk factor summation method** is a broader version of the Berkus method which maps out risks from: management, business stage, legislation, manufacturing, marketing, funding, competition, technology, litigation, international actors, reputation, and lucrative exit. Each risk type is qualitatively assessed from -2 to 2 and the sum is multiplied by $250K.

### Rule of Thirds

The **rule of thirds** estimates the valuation as three times the amount invested pre-revenue. The idea is that any investor willing to invest has faith in the company, so a $1M investment reflects a $3M valuation. The problem is that this can generate incentives to raise as much as possible.

### Standard Value

The **standard value money** simply gives a $2-3M valuation for pre-revenue companies. Typically, this is a valuation sweet spot for a 8-10x ROI upon exit.
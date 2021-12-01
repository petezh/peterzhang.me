---
title: "Volvo Cars"
excerpt: "Compiled and priced subscription-based car features through surveys and software development."
image: "/images/experiences/volvo_logo.jpeg"
collection: experiences
date: 2021-01-15
end_date: 2021-05-08
type: Consulting
venue: Berkeley, CA
---

In spring of 2021, I worked with a Voyager Consulting team to provide pricing recommendations to Volvo Cars. We studied [on-demand car features](https://www.q-perior.com/en/fokusthema/on-demand-car-functions-a-new-revenue-source-for-the-car-of-the-future) (ODCFs), premium features that could be built into the car and activated post-market. The subscription pricing model is a [new revenue stream](https://www.consumerreports.org/automotive-industry/why-you-might-need-to-subscribe-to-get-certain-features-on-your-next-car-a6575794430/) for car manufacturers and is already adopted by Audi, BMW, Cadillac, Porsche, and Tesla. Our project involved scoping out leading ODCFs, assessing consumer price sensitivity, and implementing a break-even model.

We compiled 36 potential subscription features, spanning from heated seats to auto-pilot. We designed a novel pricing survey inspired by binary searches and Gabor-Granger pricing in which survey takers go through 5 "rounds" of price polling for each feature, converging exponentially on specific price. I implemented the survey with JavaScript logic in Qualtrics, later recieving 2,500 responses from Volvo customers.

<img width="700px" src="/images/experiences/volvo_app.png">

We then built a pricing model in R Shiny with the ability to consider economies of scale. With two price points for inputs, the model extrapolates further savings from scale with a linear model. The result was a flexible, easy-to-use application available online.
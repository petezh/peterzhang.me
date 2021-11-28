---
title: "Uber Eats"
excerpt: "Segmented eaters to design promos and optimize conversion and retention."
image: "/images/experiences/uber_eats_logo.png"
collection: experiences
date: 2021-09-26
end_date: 2021-11-29
type: Data Science
venue: Berkeley, CA
---

In fall of 2021, I worked with a [Voyager Consulting](http://www.voyagerconsulting.org/) team to consult with [Uber Eats](https://www.ubereats.com/), Uber's food delivery platform. The company dealt with many types of users, from consistent daily diners to occasional late-night snackers. One of its new offerings, the [Eats Pass](https://www.ubereats.com/eats-pass), gives users access to discounts and special promotions. Uber Eats wanted to understand how to best market the pass to different groups of eaters and navigate the [tradeoff](https://research.cbs.dk/en/publications/beyond-the-retention-acquisition-trade-off-capabilities-of-ambide) between retention and conversion. The data science project sought to cluster eaters based on behaviors in order to design promos and optimize conversion and retention metrics.

I contributed to the data querying and clustering analysis. I wrote a [batching](https://www.tutorialspoint.com/jdbc/jdbc-batch-processing.htm) script to split up a 30M+ row query for eater attributes (trips taken, average order size, etc.). I trained a random forest model to predict a user's promotion status (whether they were in a trial period or paid subscriber) and benchmarked it against other classifiers: extreme gradient boosting, light gradient boosting, logistic regression, and decision trees.

<img width="1000px" src="/images/experiences/uber_eats_methodology.png">

We then used the random forest to conduct [segmentation](https://medium.com/gradient/using-random-forests-for-segmentation-e4793482f129). I extracted a [proximity matrix](https://www.fromthegenesis.com/proximity-matrix-in-random-forest/) on a subset of users by computing the pair-wise co-occurance of users in the same terminal nodes of trees. We then used [principal coordinates analysis](https://towardsdatascience.com/principal-coordinates-analysis-cc9a572ce6c) to reduce the matrix to two dimensions and conduct [K-means clustering](https://towardsdatascience.com/understanding-k-means-clustering-in-machine-learning-6a6e67336aa1). We used violin plots and conversion/retention curves to characterize the users of each cluster and recommend promotions.
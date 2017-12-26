## Hierarchical Clustering

### 1. Introduction

The basic issue, is how do we define when thing are close together and when things are far apart? All cluster method help to identify when one thing is closer to another thing, vesus something else. We have to defined when something is to be close what is means to group things together. In short, clustering organizes things that are close into groups:

-How do we define close?

-How do we group things?

-How do visualize the grouping?

-How do we interpret the grouping?

### 2. Hierarchical clustering

It is denoted by the the title that involves organizing the data into a kind of hierarchy.

Example: This is the simulation of a dataset. We are going to plot a total of 12 points here and there are three clusters. We are going to use the hierarchical clustering to see how the points merge together

```[R]
set.seed(1234)
par(mar = c(0, 0, 0, 0))
x <- rnorm(12, mean = rep(1:3, each = 4), sd = 0.2)
y <- rnorm(12, mean = rep(c(1, 2, 1), each = 4), sd = 0.2)
plot(x, y, col = "blue", pch = 19, cex = 2)
text(x + 0.05, y + 0.05, labels = as.character(1:12))
```

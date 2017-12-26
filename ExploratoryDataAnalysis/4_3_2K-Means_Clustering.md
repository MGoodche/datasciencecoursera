## K-Means Clustering & Dimension Reduction
### 1. Introduction

K-Means clustering is very useful, thanks to this technique, you can know what observations are similar to each other, and what observations are very different from each other.

The basic principle behind K-means clustering is that first define HOW ---> How do we group things together.What does it mean to be close? How do we visualize the group?

The most important thing is define the word CLOSE, so for this, we need a distance metric to define it. And there are different types of distances:

- Continuous:: Euclidean Distance: 
- Continuous:: Correlation Distance: 
- Binary:: Manhattan Distance: 

So you need to pick a distance or similarity metric that makes sense for your problem.

### 2. K-Means Clustering

It is a way of partitioning a group of observations into a fixed number of clusters. Each cluster will have a centroid, which is going to be like a center of gravity around which each group kind of gathers. So then, we can assign each observation to each centroid.

Things that you need: a distance, a fixed number of cluster and a initial guess as to where centroids are.

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

### 2. K-Means Function

The k-means function is the function used to implement the k-means algorithm (kmeans())

Example:

```[R]
dataFrame <- data.frame(x,y)
kmeansObj <- kmeans(dataFrame,centers=3) ## Here we put for example 3 Centroids
names(kmeansObj)
```

This is what kmeans returns. We can see that returns a list with a number of different elements in it. The fourht numbers are in the cluster 1, etc etc
```[R]
kmeansObj$cluster
 [1] 1 1 1 1 2 2 2 2 3 3 3 3
```

To plot the data: 
```[R]
par(mar=rep(0.2,4))
plot(x,y,col=kmeansObj$cluster,pch=19,cex=2)
points(kmeansObj$centers,col=1:3,pch=3,cex=3,lwd=3)
```

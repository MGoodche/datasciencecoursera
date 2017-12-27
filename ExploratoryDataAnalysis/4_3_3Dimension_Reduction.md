## Dimension Reduction
### 1. Introduction
Dimension reduction is the process of reducing the number of random variables under consideration by obtaining a set of principal variables.

### 2. Using SVD for Dimensionality Reduction
SVD, or Singular Value Decomposition, is one of several techniques that can be used to reduce the dimensionality, i.e., the number of columns, of a data set.

Example:

Step 1:
```[R]
## Load random data
## Heatmap command show you the data clusters. 
heatmap(dataMatrix)
```

Step 2:
```[R]
## addPatt.R Function
set.seed(678910)
for(i in 1:40){
  # flip a coin
  coinFlip <- rbinom(1,size=1,prob=0.5)
  # if coin is heads add a common pattern to that row
  if(coinFlip){
    dataMatrix[i,] <- dataMatrix[i,] + rep(c(0,3),each=5)
  }
}
source("addPatt.R", local=TRUE)
```


#### 2.1 Missing values
Real data has tipically missing values, and the problem is that if you run the SVD, you get an error and you can't run the SVG on a data set that has missing values. Options to resolve this issue:

- Use the impute package. This package takes a missing value and imputes it nearest to the row with the missing data.

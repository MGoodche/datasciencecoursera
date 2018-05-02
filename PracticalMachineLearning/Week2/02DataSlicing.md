#### 1. Introduction
You might use data slicing either for building your training and
testing sets right at the beginning of your prediction function creation, or you might use it for performing cross
validation or boot strapping within your training
set, in order to evaluate your models.

#### Step 1: Separate data into training and test tests.

So, again I'm going to try to predict when an email is spam. And there are a bunch of variables to take in consideration like when a particular word appears, of number of capital letters...So, firstly, we separate the data into training set and test test (we use createDataPartition funtion to divide the data).

```[R]
library(caret); library(kernlab); data(spam)
inTrain <- createDataPartition(y=spam$type,
                              p=0.75, list=FALSE)
training <- spam[inTrain,]
testing <- spam[-inTrain,]
dim(training)
```
Result:

```[R]
[1] 3451   58
```

#### Step 2: Cross Validation.
Using cross validation, you split the training set into a bunch of smaller data sets. For this you use the function 'createFolds'

```[R]
set.seed(32323)
folds <- createFolds(y=spam$type,k=10,
                             list=TRUE,returnTrain=TRUE)
sapply(folds,length)
```

Result:
Each fold has approximately the same number of samples in it.

```[R]
Fold01 Fold02 Fold03 Fold04 Fold05 Fold06 Fold07 Fold08 Fold09 Fold10 
  4141   4140   4141   4142   4140   4142   4141   4141   4140   4141 
```

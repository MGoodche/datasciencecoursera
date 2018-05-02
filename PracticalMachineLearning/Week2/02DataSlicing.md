#### 1. Introduction
You might use data slicing either for building your training and
testing sets right at the beginning of your prediction function creation, or you might use it for performing cross
validation or boot strapping within your training
set, in order to evaluate your models.

So, again I'm going to try to predict when an email is spam. And there are a bunch of variables to take in consideration like when a particular word appears, of number of capital letters...So, firstly, we separate the data into training set and test test (we use createDataPartition funtion to divide the data).

```[R]
library(caret); library(kernlab); data(spam)
inTrain <- createDataPartition(y=spam$type,
                              p=0.75, list=FALSE)
training <- spam[inTrain,]
testing <- spam[-inTrain,]
dim(training)
```

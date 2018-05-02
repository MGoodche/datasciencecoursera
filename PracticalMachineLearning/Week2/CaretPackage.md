#### 1. Introduction

The caret package (short for _C_lassification _A_nd _RE_gression _T_raining) is a set of functions that attempt to streamline the process for creating predictive models. The package contains tools for:

- data splitting
- pre-processing
- feature selection
- model tuning using resampling
- variable importance estimation
- as well as other functionality.

More info: http://topepo.github.io/caret/index.html

###### Example: Spam Predictor

# Example of training a glm model on a spam data-set, using the caret library.
library(caret)
library(kernlab)

# Load spam dataset.
data(spam)

# Split the data into a training test set by 75% training 25% test.
inTrain <- createDataPartition(y = spam$type, p=0.75, list=FALSE)
training <- spam[inTrain,]
testing <- spam[-inTrain,]

# Set random seed value to ensure consistent training results each time.
set.seed(32343)

# Train the model (type ~ -> means use all variables in this data frame in order to predict the type)
fit <- train(type ~ ., data=training, method='glm')

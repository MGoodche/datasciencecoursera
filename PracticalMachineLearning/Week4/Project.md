
---
title: "Statistical Inference Project - ToothGrowth Data"
author: "Miriam PavÃƒÂ³n"
date: "26/05/2018"
output:
  html_document:
    theme: flatly
  pdf_document: default
---
## <a name="top"></a>Overview

Using devices such as Jawbone Up, Nike FuelBand, and Fitbit it is now possible to collect a large amount of data about personal activity relatively inexpensively. These type of devices are part of the quantified self movement – a group of enthusiasts who take measurements about themselves regularly to improve their health, to find patterns in their behavior, or because they are tech geeks. One thing that people regularly do is quantify how much of a particular activity they do, but they rarely quantify how well they do it. In this project, your goal will be to use data from accelerometers on the belt, forearm, arm, and dumbell of 6 participants. They were asked to perform barbell lifts correctly and incorrectly in 5 different ways. More information is available from the website here: http://web.archive.org/web/20161224072740/http:/groupware.les.inf.puc-rio.br/har (see the section on the Weight Lifting Exercise Dataset).


Click on links here to quickly view tasks completed in this assignment:

1.  [Load the data and perform some basic preprocess of the data.](#point1)
2.  [Provide a basic summary of the data.](#point2) 
3.  [Use confidence intervals and/or hypothesis tests to compare tooth growth by supp and dose. (Only use the techniques from class, even if there's other approaches worth considering).](#point3) 
4.  [State your conclusions and the assumptions needed for your conclusions.](#point4) 

## Data


The training data for this project are available here:

https://d396qusza40orc.cloudfront.net/predmachlearn/pml-training.csv

The test data are available here:

https://d396qusza40orc.cloudfront.net/predmachlearn/pml-testing.csv





## Requirements

For this assignment you will need some specific tools

*<br>* RStudio: *</br>* You will need RStudio to publish your completed analysis document to RPubs. You can also use RStudio to edit/write your analysis.

*<br>* knitr:*</br>* You will need the knitr package in order to compile your R Markdown document and convert it to HTML

Before beginning the project, be sure to load the required R libraries and set any environmental variables. Note that setting messages in markdown to false 
suppresses messages from library loading such as version number and dependencies.
Updating to latest versions of these libraries may improve ability to obtain
results fairly similar to the steps outlined here.


```{r, collapse=FALSE, echo=TRUE, results='markup', error=FALSE, message=FALSE, warning=FALSE}
# load libraries
library(caret)
library(randomForest)
library(gbm)
```

### <a name="point1"></a>1. Load the data and perform some basic preprocess of the data.


```{r, collapse=FALSE, echo=TRUE, results='markup', error=FALSE, message=FALSE, warning=FALSE}
set.seed(2017-09-02)
##loading the dataset
trainUrl = "https://d396qusza40orc.cloudfront.net/predmachlearn/pml-training.csv"
testUrl = "https://d396qusza40orc.cloudfront.net/predmachlearn/pml-testing.csv"

training = read.csv(url(trainUrl), na.strings = c("NA", "#DIV/0!", ""))
testing = read.csv(url(testUrl), na.strings = c("NA", "#DIV/0!", ""))
##remove the columns are not related to predition variables required
training1 = training[,-c(1:7)]
testing1 = testing[, -c(1:7)]
##Remove those variables with NA value for training and testing set
training1=training1[, colSums(is.na(training1))==0]
testing1=testing1[, colSums(is.na(testing1))==0]

dim(training1); dim(testing1)

##the predictor variables showed in both training and testing dataset
int =intersect(names(training1), names(testing1))
length(int)

training1$classe <- as.factor(training1$classe)
##partition training1 dataset into training and probing two set by outcome classe
inTrain=createDataPartition(training1$classe, p=0.6, list=FALSE)
training2=training1[inTrain,]
probing=training1[-inTrain,]
dim(training2); dim(probing)

```


 [Back to top](#top)

### <a name="point2"></a>2. Prediction model1 random forest


Now, the summary of the prediction:
```{r, collapse=FALSE, echo=TRUE, results='markup', error=FALSE, message=FALSE, warning=FALSE}
modFit=train(classe ~ ., method="rf", data=training2)
pred_probing=predict(modFit, probing)
##accuracy from random forest
confusionMatrix(pred_probing, probing[, "classe"])$overall[1]

```


 
 [Back to top](#top)
 
-----

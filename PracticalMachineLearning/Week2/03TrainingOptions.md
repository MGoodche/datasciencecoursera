There are different options you can use:

```[R]
args(train.default)
function (x, y, method = "rf", preProcess = NULL, ..., weights = NULL, 
    metric = ifelse(is.factor(y), "Accuracy", "RMSE"), maximize = ifelse(metric == 
        "RMSE", FALSE, TRUE), trControl = trainControl(), tuneGrid = NULL, 
    tuneLength = 3) 
NULL
```

1. weights: you can upweight or downweight certain observations
2. You can set the metric, so by default for
factor variable, in other words for categorical variables the default metric
is accuracy that it's trying to maximize. For continuous variables it's
the root mean squared error
3. trControl parameter: set a large number of other control parameters

#### Metric options

Continous outcomes:
RMSE = Root mean squared error
RSquared = $R^2$ from regression models. RSquared is a measure of linear agreement
between the variables that you're predicting and
the variables that you predict with

Categorical outcomes:
Accuracy = Fraction correct
Kappa = A measure of concordance

#### Setting the seed
Finally, an important component of training these models is setting the seed. So what I mean by that is most of these procedures rely on random resampling of the data. And if you rerun the protocol over again, or rerun the code over again, you will get a slightly different answer because there was a random draw that was created when you were doing cross-validation. If you set a seed, a random number seed, what that'll do is that'll ensure that the same random numbers get generated each time. 

It's very useful often to set the overall seed. This is a seed for the entire procedure so you get repeatable results. If you're doing parallel computation you can also set the seed for each resample. You can do that with a seed argument to the train control function. Seeding each resamples is particularly useful for parallel fits but it's often not necessary when you're doing all your processing 

```[R]
set.seed(1235)
modelFit2 <- train(type ~.,data=training, method="glm")
modelFit2
Generalized Linear Model 

3451 samples
  57 predictors
   2 classes: 'nonspam', 'spam' 

No pre-processing
Resampling: Bootstrapped (25 reps) 

Summary of sample sizes: 3451, 3451, 3451, 3451, 3451, 3451, ... 

Resampling results

  Accuracy  Kappa  Accuracy SD  Kappa SD
  0.9       0.8    0.007        0.01    
  ```
  
So, here's an example of that. If you set the seed using the set.seed function in R, and then I give it a number, an integer number, it will set a seed that's consistent with performance analysis. So it will generate a set of random numbers that is consistent. So then if I fit my model, like this, then when it generates bootstrap samples. It will generate those bootstrap samples according to the random numbers that come from this seed. If I then reset the seed again, and fit the model again, now with a different number, modelFit3 instead of modelFit2, then I will get exactly the same bootstrap samples and exactly the same measures of accuracy back out again. This is important when you're training models and then you want to share your training data set with someone else and ensure that you get the same answer when they run the same code.

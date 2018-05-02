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


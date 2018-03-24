### Question 1
#### Consider the following data with x as the predictor and y as as the outcome.

```[R]
x <- c(0.61, 0.93, 0.83, 0.35, 0.54, 0.16, 0.91, 0.62, 0.62)
y <- c(0.67, 0.84, 0.6, 0.18, 0.85, 0.47, 1.1, 0.65, 0.36)
```

#### Give a P-value for the two sided hypothesis test of whether β1 from a linear regression model is 0 or not.

Answer:0.05296439

```[R]
> x <- c(0.61, 0.93, 0.83, 0.35, 0.54, 0.16, 0.91, 0.62, 0.62)
> y <- c(0.67, 0.84, 0.6, 0.18, 0.85, 0.47, 1.1, 0.65, 0.36)
> fit <- lm(y~x)
# lm (predictor, outcome)
> summary(fit)$coefficients
             Estimate Std. Error   t value   Pr(>|t|)
(Intercept) 0.1884572  0.2061290 0.9142681 0.39098029
x           0.7224211  0.3106531 2.3254912 0.05296439
```

### Question 2
#### Consider the previous problem, give the estimate of the residual standard deviation.

Answer: 0.2229981 ~ 0.223
```[R]
> summary(fit)$sigma
[1] 0.2229981
```

### Question 3
#### In the mtcars data set, fit a linear regression model of weight (predictor) on mpg (outcome). Get a 95% confidence interval for the expected mpg at the average weight. What is the lower endpoint?

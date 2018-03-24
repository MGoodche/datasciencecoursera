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
> summary(fit)$coef
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

Answer: 18.99098
```[R]
> x<-mtcars$wt
> y<-mtcars$mpg
> fit<-lm(y ~ x)
> predict(fit,data.frame(x=mean(x)), interval="confidence")
       fit      lwr      upr
1 20.09062 18.99098 21.19027

```

### Question 4
#### Refer to the previous question. Read the help file for mtcars. What is the weight coefficient interpreted as?

Answer: The estimated expected change in mpg per 1,000 lb increase in weight.

### Question 5
#### Consider again the mtcars data set and a linear regression model with mpg as predicted by weight (1,000 lbs). A new car is coming weighing 3000 pounds. Construct a 95% prediction interval for its mpg. What is the upper endpoint?

Answer: 27.57355
```[R]
> x<-mtcars$wt
> y<-mtcars$mpg
> fit<-lm(y ~ x)
> predict(fit, data.frame(x=3), interval = ("prediction"))
       fit      lwr      upr
1 21.25171 14.92987 27.57355

Also;
fit <- lm(mpg ~ wt, data = mtcars)
predict(fit, newdata = data.frame(wt = 3), interval = "prediction")
```
### Question 6
#### Consider again the mtcars data set and a linear regression model with mpg as predicted by weight (in 1,000 lbs). A “short” ton is defined as 2,000 lbs. Construct a 95% confidence interval for the expected change in mpg per 1 short ton increase in weight. Give the lower endpoint.

Answer: -12.973
```[R]
> fit <- lm(mpg ~ wt, data = mtcars)
> confint(fit)[2, ] * 2
##   2.5 %  97.5 % 
## -12.973  -8.405
```
### Question 7
#### If my X from a linear regression is measured in centimeters and I convert it to meters what would happen to the slope coefficient?
Answer: It would get multiplied by 100.

### Question 8
#### I have an outcome, Y, and a predictor, X and fit a linear regression model with Y=β0+β1X+ϵ to obtain β^0 and β^1. What would be the consequence to the subsequent slope and intercept if I were to refit the model with a new regressor, X+c for some constant, c?
Answer: If we add a constant to the predictor, it should be substracted to keep the consistency of the equations. So The new intercept would be β0−cβ1.

### Question 9
#### Refer back to the mtcars data set with mpg as an outcome and weight (wt) as the predictor. About what is the ratio of the the sum of the squared errors, ∑ni=1(Yi−Y^i)2 when comparing a model with just an intercept (denominator) to the model with the intercept and slope (numerator)?

Answer: 0.2471672
```[R]
> x<-mtcars$wt
> y<-mtcars$mpg
> fit<-lm(y ~ x)
> sum(resid(fit)^2) / sum((y - mean(y)) ^ 2)
[1] 0.2471672
```
### Question 10
#### Do the residuals always have to sum to 0 in linear regression?

Answer: If an intercept is included, then they will sum to 0.

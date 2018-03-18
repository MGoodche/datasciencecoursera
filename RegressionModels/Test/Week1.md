### Question 1
#### Consider the data set given below
```[R]
x <- c(0.18, -1.54, 0.42, 0.95)

w <- c(2, 1, 3, 1)
```

#### Give the value of μ that minimizes the least squares equation ∑ [ w_i * (x_i − μ)^2 ]

Answer: 0.1471429
In general, if you want to optimize a function for a single parameter, you can use the optimize function
```[R]
x <- c(0.18, -1.54, 0.42, 0.95)
w <- c(2, 1, 3, 1)

optimize( function(u){ sum(w*(x-u)^2) }, interval=c(-100,100))

$minimum
[1] 0.1471429

$objective
[1] 3.716543
```

Also:
```[R]
x <- c(0.18, -1.54, 0.42, 0.95)
w <- c(2, 1, 3, 1)
sum(x*w)/sum(w)
[1] 0.1471429
```

### Question 2
#### Consider the following data set
```[R]
x <- c(0.8, 0.47, 0.51, 0.73, 0.36, 0.58, 0.57, 0.85, 0.44, 0.42)
y <- c(1.39, 0.72, 1.55, 0.48, 1.19, -1.59, 1.23, -0.65, 1.49, 0.05)
```
#### Fit the regression through the origin and get the slope treating y as the outcome and x as the regressor. (Hint, do not center the data since we want regression through the origin, not through the means of the data.)

Answer: 0.8263

```[R]
> x <- c(0.8, 0.47, 0.51, 0.73, 0.36, 0.58, 0.57, 0.85, 0.44, 0.42)
> y <- c(1.39, 0.72, 1.55, 0.48, 1.19, -1.59, 1.23, -0.65, 1.49, 0.05)
> lm(y~x-1)

Call: 
lm(formula = y ~ x - 1)

Coefficients:
     x  
0.8263  
```
### Question 3
#### Do data(mtcars) from the datasets package and fit the regression model with mpg as the outcome and weight as the predictor. Give the slope coefficient.

Answer: -5.344

```[R]
> data(mtcars)
> head(mtcars)
                   mpg cyl disp  hp drat    wt  qsec vs am gear carb
Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
Valiant           18.1   6  225 105 2.76 3.460 20.22  1  0    3    1

> lm(mtcars$mpg ~ mtcars$wt)

Call:
lm(formula = mtcars$mpg ~ mtcars$wt)

Coefficients:
(Intercept)    mtcars$wt  
     37.285       -5.344  
```

### Question 4
#### Consider data with an outcome (Y) and a predictor (X). The standard deviation of the predictor is one half that of the outcome. The correlation between the two variables is .5. What value would the slope coefficient for the regression model with Y as the outcome and X as the predictor?

Answer: 1

### Question 5
#### Students were given two hard tests and scores were normalized to have empirical mean 0 and variance 1. The correlation between the scores on the two tests was 0.4. What would be the expected score on Quiz 2 for a student who had a normalized score of 1.5 on Quiz 1?

Answer: 0.6

### Question 6
#### Consider the data given by the following
```[R]
x <- c(8.58, 10.46, 9.01, 9.64, 8.86)
```
#### What is the value of the first measurement if x were normalized (to have mean 0 and variance 1)?

Answer:  -0.9718658

```[R]
> x <- c(8.58, 10.46, 9.01, 9.64, 8.86)
> a = (x - mean(x)) / sd(x)
> a[1]
[1] -0.9718658
```

### Question 7
#### Consider the following data set (used above as well). What is the intercept for fitting the model with x as the predictor and y as the outcome?
```[R]
x <- c(0.8, 0.47, 0.51, 0.73, 0.36, 0.58, 0.57, 0.85, 0.44, 0.42)
y <- c(1.39, 0.72, 1.55, 0.48, 1.19, -1.59, 1.23, -0.65, 1.49, 0.05)
```

Answer:-1.713

```[R]
> x <- c(0.8, 0.47, 0.51, 0.73, 0.36, 0.58, 0.57, 0.85, 0.44, 0.42)
> y <- c(1.39, 0.72, 1.55, 0.48, 1.19, -1.59, 1.23, -0.65, 1.49, 0.05)
> lm(y~x)

Call:
lm(formula = y ~ x)

Coefficients:
(Intercept)            x  
      1.567       -1.713 
```
### Question 8
#### You know that both the predictor and response have mean 0. What can be said about the intercept when you fit a linear regression?

Answer: It must be identically 0.

### Question 9
#### Consider the data given by
```[R]
x <- c(0.8, 0.47, 0.51, 0.73, 0.36, 0.58, 0.57, 0.85, 0.44, 0.42)
```
#### What value minimizes the sum of the squared distances between these points and itself?

Answer: 0.573

```[R]
> x <- c(0.8, 0.47, 0.51, 0.73, 0.36, 0.58, 0.57, 0.85, 0.44, 0.42)
> mean(x)
[1] 0.573
```
### Question 10
#### Let the slope having fit Y as the outcome and X as the predictor be denoted as β1. Let the slope from fitting X as the outcome and Y as the predictor be denoted as γ1. Suppose that you divide β1 by γ1; in other words consider β1/γ1. What is this ratio always equal to?

Answer: Var(y)/Var(x)

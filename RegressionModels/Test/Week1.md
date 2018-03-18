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
```[R]
B =

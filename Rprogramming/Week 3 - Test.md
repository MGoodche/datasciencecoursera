### 1) Take a look at the 'iris' dataset that comes with R. The data can be loaded with the code:
```[javascript]
library(datasets)
data(iris)
```
### What is the result of running
```[javascript]
?iris
```
### There will be an object called 'iris' in your workspace. In this dataset, what is the mean of 'Sepal.Length' for the species virginica? Please round your answer to the nearest whole number.

Answer: 7

Explanation: To get the answer here, you can use 'tapply' to calculate the mean of 'Sepal.Length' within each species.
```[javascript]
>head(iris)
>round(mean(iris[which(iris$Species == "virginica"),]$Sepal.Length))
```

### 2) Continuing with the 'iris' dataset from the previous Question, what R code returns a vector of the means of the variables 'Sepal.Length', 'Sepal.Width', 'Petal.Length', and 'Petal.Width'?

Answer: > apply(iris[, 1:4], 2, mean)

### 3) Load the 'mtcars' dataset in R with the following code
```[javascript]
library(datasets)
data(mtcars)
```
### There will be an object names 'mtcars' in your workspace. You can find some information about the dataset by running
```[javascript]
?mtcars
```
### How can one calculate the average miles per gallon (mpg) by number of cylinders in the car (cyl)? Select all that apply.
Answer: 
```[javascript]
> sapply(split(mtcars$mpg, mtcars$cyl), mean)
> with(mtcars, tapply(mpg, cyl, mean))
> tapply(mtcars$mpg, mtcars$cyl, mean)
```
### 4) Continuing with the 'mtcars' dataset from the previous Question, what is the absolute difference between the average horsepower of 4-cylinder cars and the average horsepower of 8-cylinder cars?

Answer: 127

Explanation
```[javascript]
x <- tapply(mtcars$hp, mtcars$cyl, mean)
x['8'] - x['4']
```

### 5) If you run debug(ls) what happens when you next call the 'ls' function?

Answer: Execution of 'ls' will suspend at the beginning of the function and you will be in the browser.

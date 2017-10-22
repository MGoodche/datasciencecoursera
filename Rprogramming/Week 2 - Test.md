### 1) Suppose I define the following function in R
```[javascript]
cube <- function(x, n) {
        x^3
}
```
What is the result of running
```[javascript]
cube(3)
```
Answer: The number 27 is returned.

Explanation: Because 'n' is not evaluated, it is not needed even though it is a formal argument.

### 2) The following code will produce a warning in R.
```[javascript]
x <- 1:10
if(x > 5) {
        x <- 0
}
```
Answer: 
'x' is a vector of length 10 and 'if' can only test a single logical statement.

### 3) Consider the following function. 
```[javascript]
f <- function(x) {
        g <- function(y) {
                y + z
        }
        z <- 4
        x + g(x)
}
```
### If I then run in R. What value is returned?
```[javascript]
z <- 10
f(3)
```
Answer: 10

### 4) Consider the following expression. What is the value of 'y' after evaluating this expression?
```[javascript]
x <- 5
y <- if(x < 3) {
        NA
} else {
        10
}
```
Answer: 10



### 5) Consider the following R function. Which symbol in the above function is a free variable?
```[javascript]
h <- function(x, y = NULL, d = 3L) {
        z <- cbind(x, d)
        if(!is.null(y))
                z <- z + y
        else
                z <- z + f
        g <- x + y / z
        if(d == 3L)
                return(g)
        g <- g + 10
        g
}
```
Answer: f

### 6) What is an environment in R?

Answer: A collection of symbol/value pairs


### 7) The R language uses what type of scoping rule for resolving free variables?

Answer:Lexical scoping

### 8) How are free variables in R functions resolved?

Answer: The values of free variables are searched for in the environment in which the function was defined


### 9) What is one of the consequences of the scoping rules used in R?

Answer: All objects must be stored in memory


### 10) In R, what is the parent frame?

Answer: It is the environment in which a function was called

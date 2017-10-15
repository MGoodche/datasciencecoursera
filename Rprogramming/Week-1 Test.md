### 1) R was developed by statisticians working at
Answer: The University of Auckland
Explanation: The R language was developed by Ross Ihaka and Robert Gentleman who were statisticians at the University of Auckland in New Zealand.

### 2) The definition of free software consists of four freedoms (freedoms 0 through 3 ). Which of the following is NOT one of the freedoms that are part of the definition? Select all that apply.
Answer: 
- The freedom to restrict access to the source code for the software.
- The freedom to sell the software for any price.
- The freedom to prevent users from using the software for undesirable purposes.

### 3) In R the following are all atomic data types EXCEPT: (Select all that apply)
Answer:
- Array
- Data frame
- List
- Matrix
- List

### 4) If I execute the expression x <- 4 in R, what is the class of the object x' as determined by the class()' function?
Answer: Numeric

Explanation:
```[javascript]
> x <- 4
> class(x)
[1] "numeric"

```

### 5) What is the class of the object defined by x <- c(4, TRUE)?
Answer: Numeric

Explanation:
The numeric class is the "lowest common denominator" here and so all elements will be coerced into that class.
```[javascript]
> x <- c(4, TRUE)
> class(x)
[1] "numeric"
```

### 6) If I have two vectors x <- c(1,3, 5) and y <- c(3, 2, 10), what is produced by the expression rbind(x, y)?
Answer: a matrix with two rows and three columns

Explanation:
The 'rbind' function treats vectors as if they were rows of a matrix. It then takes those vectors and binds them together row-wise to create a matrix.
```[javascript]
> x <- c(1,3, 5);y <- c(3, 2, 10)
> rbind(x,y)
  [,1] [,2] [,3]
x    1    3    5
y    3    2   10

```

### 7) A key property of vectors in R is that
Answer: Elements of a vector all must be of the same class

### 8) Suppose I have a list defined as x <- list(2, "a", "b", TRUE). What does x[[2]] give me? Select all that apply.
Answer:
- A character vector of length 1.
- A character vector containing the letter "a".

Explanation:
```[javascript]
> x <- list(2, "a", "b", TRUE)
> x[[2]] 
[1] "a"
> class(x[[2]])
[1] "character"
```

### 9) Suppose I have a vector x <- 1:4 and a vector y <- 2. What is produced by the expression x + y?
Answer: A numeric vector with elements 3, 4, 5, 6.

Explanation:

```[javascript]
> x <- 1:4 ; y <- 2
> x + y
[1] 3 4 5 6
> class(x + y)
[1] "numeric"
```

### 10) Suppose I have a vector x <- c(17, 14, 4, 5, 13, 12, 10) and I want to set all elements of this vector that are greater than 10 to be equal to 4. What R code achieves this? Select all that apply.
Answer: 
- x[x >= 11] <- 4
- x[x > 10] <- 4

Explanation:

```[javascript]
> x <- c(17, 14, 4, 5, 13, 12, 10)
> x[x >= 11] <- 4
> x
[1]  4  4  4  5  4  4 10

> x <- c(17, 14, 4, 5, 13, 12, 10)
> x[x > 10] <- 4
> x
[1]  4  4  4  5  4  4 10
```

### 11) Use the Week 1 Quiz Data Set to answer questions 11-20. In the dataset provided for this Quiz, what are the column names of the dataset?
Answer: 
Ozone, Solar.R, Wind, Temp, Month, Day

Explanation: 
```[javascript]
> data<-read.table('hw1_data.csv',header=TRUE,sep=",")
> names(data)
[1] "Ozone"   "Solar.R" "Wind"    "Temp"    "Month"   "Day"  
```

### 12) Extract the first 2 rows of the data frame and print them to the console. What does the output look like?
Answer:
  Ozone Solar.R Wind Temp Month Day
1    41     190  7.4   67     5   1
2    36     118  8.0   72     5   2

Explanation:
```[javascript]
> data[c(1,2),]
  Ozone Solar.R Wind Temp Month Day
1    41     190  7.4   67     5   1
2    36     118  8.0   72     5   2 
```

### 13) How many observations (i.e. rows) are in this data frame?
Answer:
-153

Explanation:
```[javascript]
> nrow(data)
[1] 153
```


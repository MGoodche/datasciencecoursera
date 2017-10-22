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
- 153

Explanation:
```[javascript]
> nrow(data)
[1] 153
```[javascript]

### 14) Extract the last 2 rows of the data frame and print them to the console. What does the output look like?
Answer:
   Ozone Solar.R Wind Temp Month Day
152    18     131  8.0   76     9  29
153    20     223 11.5   68     9  30

Explanation:
```[javascript]
> tail(data,2)
    Ozone Solar.R Wind Temp Month Day
152    18     131  8.0   76     9  29
153    20     223 11.5   68     9  30
```
### 15) What is the value of Ozone in the 47th row?
Answer:
- 21

Explanation:
```[javascript]
> data[47,]
   Ozone Solar.R Wind Temp Month Day
47    21     191 14.9   77     6  16
```

### 16) How many missing values are in the Ozone column of this data frame?
Answer: 
- 37

Explanation:
```[javascript]
> missing <-subset(data,is.na(Ozone))
> nrow(missing)
[1] 37
```
### 17) What is the mean of the Ozone column in this dataset? Exclude missing values (coded as NA) from this calculation.
Answer:
- 42.1

Explanation:
```[javascript]
> meanOzone <- subset(data, !is.na(Ozone), select = Ozone)
> apply (meanOzone, 2, mean)
   Ozone 
42.12931 
```

### 18) Extract the subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90. What is the mean of Solar.R in this subset?
Answer:
- 212.8

Explanation:

You need to construct a logical vector in R to match the question's requirements. Then use that logical vector to subset the data frame.
```[javascript]
> valuesOzone <- subset(data,data$Ozone>31 & data$Temp>90,select=Solar.R)
> apply (valuesOzone, 2, mean)
Solar.R 
  212.8 
```

### 19) What is the mean of "Temp" when "Month" is equal to 6?
Answer:
- 79.1

Explanation:
```[javascript]
> meanTemp <- subset(data,data$Month==6,select=Temp)
> apply (meanTemp, 2, mean)
Temp 
79.1 
```

### 20) What was the maximum ozone value in the month of May (i.e. Month is equal to 5)?
Answer:
- 115

Explanation:

```[javascript]
> maxOzone <-subset(data,!is.na(Ozone)&data$Month==5,select=Ozone)
> apply (maxOzone, 2, max)
Ozone 
  115 
```

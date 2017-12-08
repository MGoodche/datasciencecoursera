### 1) The American Community Survey distributes downloadable data about United States communities. Download the 2006 microdata survey about housing for the state of Idaho using download.file() from here:

https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv

### and load the data into R. The code book, describing the variable names is here:

https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf

### Create a logical vector that identifies the households on greater than 10 acres who sold more than $10,000 worth of agriculture products. Assign that logical vector to the variable agricultureLogical. Apply the which() function like this to identify the rows of the data frame where the logical vector is TRUE.

```[javascript]
 which(agricultureLogical)
```
### What are the first 3 values that result?
Answer:
First, open the pdf:

VAL ACR
```[javascript]
Lot size
 b .N/A (GQ/not a one-family house or mobile home)
 1 .House on less than one acre
 2 .House on one to less than ten acres
 3 .House on ten or more acres
```
VAL AGS
```[javascript]
Sales of Agriculture Products
 b .N/A (less than 1 acre/GQ/vacant/
 .2 or more units in structure)
 1 .None
 2 .$ 1 - $ 999
 3 .$ 1000 - $ 2499
 4 .$ 2500 - $ 4999
 5 .$ 5000 - $ 9999
 6 .$10000+
 ```
 24 .$1000000+
 
Then: 
```[javascript]
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(url,destfile="quiz3question1.csv",mode="w")
dt <- read.csv("quiz3question1.csv")
agricultureLogical <- dt$ACR == 3 & dt$AGS == 6
which(agricultureLogical)[1:3]
[1] 125 238 262
```



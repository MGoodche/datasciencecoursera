### 1) The American Community Survey distributes downloadable data about United States communities. Download the 2006 microdata survey about housing for the state of Idaho using download.file() from here:

https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv

### and load the data into R. The code book, describing the variable names is here:

https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf

### How many properties are worth $1,000,000 or more?
Answer:
First, open the pdf:

VAL 2

 Property value
 
 bb .N/A (GQ/rental unit/vacant, not for sale only)
 
 24 .$1000000+
 
Then: 
```[javascript]
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(url,destfile="quiz1question1.csv",mode="w")
data <- read.csv("quiz1question1.csv")
nrow(data[which(data$VAL == 24),])
[1] 53
```
### 2) Use the data you loaded from Question 1. Consider the variable FES in the code book. Which of the "tidy data" principles does this variable violate?
Answer:
Tidy data has one variable per column.

### 3) Download the Excel spreadsheet on Natural Gas Aquisition Program here:

https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx

Answer:

[1] Install and load xlsx package:
```[javascript]
install.packages("xlsx")
install.packages("readxl")
install.packages("rJava")
library("xlsx")

```
[2] Download the data and select the colums 
```[javascript]
url2 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"
download.file(url2,destfile="quiz1question2.xlsx",mode="wb")
row <- 18:23
col <- 7:15
solution <- read.xlsx("quiz1question2.xlsx", sheetIndex = 1, colIndex = col, rowIndex = row, header = TRUE)
```
[3] The result is:
```[javascript]
sum(solution$Zip*solution$Ext,na.rm=T)
[1] 36534720
```
### Read rows 18-23 and columns 7-15 into R and assign the result to a variable called:
```[javascript]
dat
```
### What is the value of:
```[javascript]
sum(dat$Zip*dat$Ext,na.rm=T)
```
Answer:

### 4) Read the XML data on Baltimore restaurants from here:

https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml

### How many restaurants have zipcode 21231?
Answer:

### 5) The American Community Survey distributes downloadable data about United States communities. Download the 2006 microdata survey about housing for the state of Idaho using download.file() from here:

https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv

### using the fread() command load the data into an R object
```[javascript]
DT
```
### The following are ways to calculate the average value of the variable
```[javascript]
pwgtp15
```
### broken down by sex. Using the data.table package, which will deliver the fastest user time?
Answer:

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
 01 .Less than $ 10000
 02 .$ 10000 - $ 14999
 03 .$ 15000 - $ 19999
 04 .$ 20000 - $ 24999
 05 .$ 25000 - $ 29999
 06 .$ 30000 - $ 34999
 07 .$ 35000 - $ 39999
 08 .$ 40000 - $ 49999
 09 .$ 50000 - $ 59999
 10 .$ 60000 - $ 69999
 11 .$ 70000 - $ 79999
 12 .$ 80000 - $ 89999
 13 .$ 90000 - $ 99999
 14 .$100000 - $124999
 15 .$125000 - $149999
 16 .$150000 - $174999
 17 .$175000 - $199999
 18 .$200000 - $249999
 19 .$250000 - $299999
 20 .$300000 - $399999
 21 .$400000 - $499999
 22 .$500000 - $749999
 23 .$750000 - $999999
 ##24 .$1000000+
 
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

### 3) Download the Excel spreadsheet on Natural Gas Aquisition Program here:

https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx
Answer:

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

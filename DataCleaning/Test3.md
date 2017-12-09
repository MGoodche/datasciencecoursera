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
 
Then: 
```[javascript]
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(url,destfile="quiz3question1.csv",mode="w")
dt <- read.csv("quiz3question1.csv")
agricultureLogical <- dt$ACR == 3 & dt$AGS == 6
which(agricultureLogical)[1:3]
[1] 125 238 262
```

### 2) Using the jpeg package read in the following picture of your instructor into R

https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg

### Use the parameter native=TRUE. What are the 30th and 80th quantiles of the resulting data? (some Linux systems may produce an answer 638 different for the 30th quantile)

```[javascript]

## Install jpeg package and download the image
install.packages("jpeg")
library(jpeg)
urlimg <- "https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg"
download.file(urlimg, destfile="imgfile.jpeg", mode = "wb")

## Read file
img <- readJPEG("imgfile.jpeg", native = TRUE)

## Get quantiles at 30% and 80%
quantile(img, probs = c(0.3, 0.8)) 

 30%       80% 
-15259150 -10575416 
```
### 3) Load the Gross Domestic Product data for the 190 ranked countries in this data set:

https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv

### Load the educational data from this data set:

https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv

### Match the data based on the country shortcode. How many of the IDs match? Sort the data frame in descending order by GDP rank (so United States is last). What is the 13th country in the resulting data frame?

### Original data sources:

http://data.worldbank.org/data-catalog/GDP-ranking-table

http://data.worldbank.org/data-catalog/ed-stats

[1]Download the two datasets using download.file command:
```[javascript]
url1 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
download.file(url,destfile="quiz3question3_1.csv",mode="w")
url2 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv"
download.file(url2,destfile="quiz3question3_2.csv",mode="w")
```
[2] Load and visualize the data:
```[javascript]
data1 <- read.csv("quiz3question3_1.csv", header = T, skip = 3, sep = ",")
data2 <- read.csv("quiz3question3_2.csv", header = T)
head(data1)
> head(data1)
    X Ranking X.1       Economy  US.dollars. X.2 X.3 X.4 X.5 X.6
1              NA                                 NA  NA  NA  NA
2 USA       1  NA United States  16,244,600       NA  NA  NA  NA
3 CHN       2  NA         China   8,227,103       NA  NA  NA  NA
4 JPN       3  NA         Japan   5,959,718       NA  NA  NA  NA
5 DEU       4  NA       Germany   3,428,131       NA  NA  NA  NA
6 FRA       5  NA        France   2,612,878       NA  NA  NA  NA

>head(data2)
  CountryCode                    Long.Name         Income.Group                     Region Lending.category Other.groups  Currency.Unit
1         ABW                        Aruba High income: nonOECD  Latin America & Caribbean                                Aruban florin
2         ADO      Principality of Andorra High income: nonOECD      Europe & Central Asia                                         Euro
3         AFG Islamic State of Afghanistan           Low income                 South Asia              IDA         HIPC Afghan afghani
4         AGO  People's Republic of Angola  Lower middle income         Sub-Saharan Africa              IDA              Angolan kwanza
5         ALB          Republic of Albania  Upper middle income      Europe & Central Asia             IBRD                Albanian lek
```
[3] Install and load packages: data.table
```[javascript]
library(data.table)
```
[4] Read the data using data.table library. I am going to assign the same ID: CountryCode to both datasets
```[javascript]
gdp <- fread("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv", skip = 4, nrows = 190, select = c(1, 2, 4, 5), col.names = c("CountryCode", "Rank", "Economy", "Total"))
edu <- fread("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv")
View(gdp)
View(edu)
merge <- merge(gdp, edu, by = 'CountryCode')
```
[5] To sort the data frame in descending order by GDP rank, use desc() to sort a variable in descending order.
```[javascript]
library(dplyr)
> nrow(merge)
[1] 189
> arrange(merge, desc(Rank))[13,"Economy"]
[1] "St. Kitts and Nevis"
```

### 4) What is the average GDP ranking for the "High income: OECD" and "High income: nonOECD" group?
```[javascript]
> tapply(merge$Rank, merge$`Income Group`, mean)
High income: nonOECD    High income: OECD           Low income  Lower middle income  Upper middle income 
            91.91304             32.96667            133.72973            107.70370             92.13333 
```

### 5) Cut the GDP ranking into 5 separate quantile groups. Make a table versus Income.Group. How many countries are Lower middle income but among the 38 nations with highest GDP?
```[javascript]
library(Hmisc)
separategroups <- cut2(merge$Rank, g=5)
table(separategroups, merge$"Income Group")  
separategroups High income: nonOECD High income: OECD Low income Lower middle income Upper middle income
     [  1, 39)                    4                18          0                   5                  11
     [ 39, 77)                    5                10          1                  13                   9
     [ 77,115)                    8                 1          9                  12                   8
     [115,154)                    5                 1         16                   8                   8
     [154,190]                    1                 0         11                  16                   9
```

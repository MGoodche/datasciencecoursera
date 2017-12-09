### 1) The American Community Survey distributes downloadable data about United States communities. Download the 2006 microdata survey about housing for the state of Idaho using download.file() from here:

https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv

### and load the data into R. The code book, describing the variable names is here:

https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf

### Apply strsplit() to split all the names of the data frame on the characters "wgtp". What is the value of the 123 element of the resulting list?

Answer:

[1] Download the data
```[javascript]
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(url,destfile="quiz4question1.csv",mode="w")
dt <- read.csv("quiz4question1.csv")
```
[2] Apply strsplit()
```[javascript]
strsplit(names(dt), split = "wgtp")[123]
[[1]]
[1] ""   "15"
```

### 2) Load the Gross Domestic Product data for the 190 ranked countries in this data set:

https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv

### Remove the commas from the GDP numbers in millions of dollars and average them. What is the average?

### Original data sources:

http://data.worldbank.org/data-catalog/GDP-ranking-table

Answer:

[1] Download the data
```[javascript]
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
download.file(url,destfile="quiz4question2.csv",mode="w")
dt <- read.csv("quiz4question2.csv",skip = 4, nrows = 190)
View(dt)
```
[2]
```[javascript]
cleanData <- gsub(",", "", dt$X.4)
cleanData <- (as.numeric(cleanData))
mean(cleanData, na.rm = TRUE)
[1] 377652.4
```

### 3- In the data set from Question 2 what is a regular expression that would allow you to count the number of countries whose name begins with "United"? Assume that the variable with the country names in it is named countryNames. How many countries begin with United?

Answer:
```[javascript]
countryNames <- gdp$X.3
grep("^United",countryNames)
[1]  1  6 32
```

### 4- Load the Gross Domestic Product data for the 190 ranked countries in this data set:

https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv

### Load the educational data from this data set:

https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv

### Match the data based on the country shortcode. Of the countries for which the end of the fiscal year is available, how many end in June?

### Original data sources:

http://data.worldbank.org/data-catalog/GDP-ranking-table

http://data.worldbank.org/data-catalog/ed-stats

Answer:

### 5- You can use the quantmod (http://www.quantmod.com/) package to get historical stock prices for publicly traded companies on the NASDAQ and NYSE. Use the following code to download data on Amazon's stock price and get the times the data was sampled.
```[javascript]
library(quantmod)
amzn = getSymbols("AMZN",auto.assign=FALSE)
sampleTimes = index(amzn)
```
### How many values were collected in 2012? How many values were collected on Mondays in 2012?

Answer:

[1] Download the package and load it
```[javascript]
install.packages("quantmod")
library(quantmod)
amzn = getSymbols("AMZN",auto.assign=FALSE)
sampleTimes = index(amzn)
```
[2] First, the year
```[javascript]
year2012 <- grepl('2012-*', sampleTimes)
table(year2012)
year2012
FALSE  TRUE 
 2505   250 
```
[3] The the day
```[javascript]
sampleTimes2012 <- subset(sampleTimes, year2012)
day <- format(sampleTimes2012, '%a')
table(day)
day
ju. lu. ma. mi. vi. 
 51  47  50  51  51 
```

Answer: 250 and 47

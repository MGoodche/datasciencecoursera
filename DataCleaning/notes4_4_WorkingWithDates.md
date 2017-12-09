### 1-Formatting Dates: 

%d = day as number (0-31), %a = abbreviated weekday,%A = unabbreviated weekday, %m = month (00-12), %b = abbreviated month, %B = unabbrevidated month, %y = 2 digit year, %Y = four digit year

Example:
```[javascript]
d2 = Sys.Date()
d2
[1] "2017-12-09"
## Format
format(d2,"%a %b %d")
[1] "sá. dic. 09"
format(d2,"%A %m %Y")
[1] "sábado 12 2017"
```
You can use different charaters within these quotes

### 2-Creating dates:
To create date, you just need to use the function as.Date()

Example
```[javascript]
Dates <- c("01/05/1965", "08/16/1975")
dates <- as.Date(strDates, "%m/%d/%Y")
dates
[1] "1965-01-05" "1975-08-16"
```

### 3- Lubridate

Install lubridate package
```[javascript]
install.packages("lubridate")
library(lubridate)
```
This package, for example, convert a number to a date:
```[javascript]
ymd("20140108")
[1] "2014-01-08"
```


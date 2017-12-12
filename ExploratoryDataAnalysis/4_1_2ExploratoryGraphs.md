
### 1- Boxplot
```[R]
boxplot(data$variable, col = "blue")
```

### 2- Histogram
```[R]
hist(data$variable, col = "green")
```
- If you want to add vertical lines to a plot

```[R]
abline(v = 12, lwd=size)
```
- If you want to add a determinate measire, use v

```[R]
abline(v = median(ppm), col = "magenta", lwd = 4)
```
- To create a frequency table
```[R]
reg <- table (data$variable)
```

### 3- Barplot
```[R]
barplot(table(data$variable), col = "wheat", main = "Number of Variables")
```

### 4- Multiple Boxplots
-  We use the R formula y ~ x to show that y depends on x, when the data come from the same data frame.  By doing this, we don't have to type data$variable1 and data$variable2. We can just specify the formula variable1~variable2

- Return subsets of vectors, matrices or data frames which meet conditions. For this, subset(x, …)

```[R]
east <- subset(pollution,region=="east")
```

```[R]
dataset <- read.csv("data.csv")
boxplot(val1 ~ val2, data = dataset, col = "red")
```

### 5- Multiple Histograms
```[R]
dataset <- read.csv("data.csv")
par(mfrow = c(2, 1), mar = c(4, 4, 2, 1))
hist(subset(dataset, region == "east")$pm25, col = "green")
hist(subset(dataset, region == "west")$pm25, col = "green")
```
- To subset for example a data in a variable of a dataframe
```[R]
hist(subset(pollution,region=="west")$pm25, col = "green")
```

### 6- Scatterplot
```[R]
dataset <- read.csv("data.csv")
with(dataset, plot(latitude, pm25))
abline(h = 12, lwd = 2, lty = 2)
```
- If you want to plot two types of variables 
```[R]
plot(pollution$latitude, ppm, col = pollution$region)
```
Thanks to this, we've got two colors on the map to distinguish between counties in the east and those in the west.
### 7- Multiple Scatterplots
```[R]
dataset <- read.csv("data.csv")
par(mfrow = c(1, 2), mar = c(5, 4, 2, 1))
with(subset(dataset, region == "west"), plot(latitude, pm25, main = "West"))
with(subset(dataset, region == "east"), plot(latitude, pm25, main = "East"))
```

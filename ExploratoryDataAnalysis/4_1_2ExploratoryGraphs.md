
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
### 3- Barplot
```[R]
barplot(table(data$variable), col = "wheat", main = "Number of Variables")
```

### 4- Multiple Boxplots
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

### 6- Scatterplot
```[R]
dataset <- read.csv("data.csv")
with(dataset, plot(latitude, pm25))
abline(h = 12, lwd = 2, lty = 2)
```

### 7- Multiple Scatterplots
```[R]
dataset <- read.csv("data.csv")
par(mfrow = c(1, 2), mar = c(5, 4, 2, 1))
with(subset(dataset, region == "west"), plot(latitude, pm25, main = "West"))
with(subset(dataset, region == "east"), plot(latitude, pm25, main = "East"))
```

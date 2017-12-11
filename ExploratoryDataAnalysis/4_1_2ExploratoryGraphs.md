
### 1- Boxplot
```[R]
boxplot(data$variable, col = "blue")
```

### 2- Histogram
```[R]
hist(data$variable, col = "green")
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
barplot(table(data$variable), col = "wheat", main = "Number of Variables")
```

### 6- Scatterplot
```[R]
barplot(table(data$variable), col = "wheat", main = "Number of Variables")
```

### 7- Multiple Scatterplots
```[R]
barplot(table(data$variable), col = "wheat", main = "Number of Variables")
```

### 1. Introduction

Thanks to the Lattice Plotting System you can make panels and plots to look at many different feature. The Lattice system use the following packages:
- Lattice Package
- Grid Package

### 2. Lattice Functions

xyplot: generates a graphics object

bwplot: box-and-whiskers plots (“boxplots”)

histogram: histograms

stripplot: like a boxplot but with actual points

dotplot: plot dots on "violin strings"

splom: scatterplot matrix; like pairs in base plotting system

levelplot, contourplot: for plotting "image" dat

- One dimension Panel
```[R]
> library(lattice)
> library(datasets)
> xyplot(Ozone ~ Wind, data = airquality)
```
![Alt text](https://github.com/MGoodche/datasciencecoursera/blob/master/ExploratoryDataAnalysis/Plots/plot2.png?raw=true)

- Multidimensional Panel

```[R]
## Plot Ozone versus Month:
> library(lattice)
> library(datasets)
> airquality <- transform(airquality, Month = factor(Month))
> xyplot(Ozone ~ Wind | Month, data = airquality, layout = c(5, 1))
```
![Alt text](https://github.com/MGoodche/datasciencecoursera/blob/master/ExploratoryDataAnalysis/Plots/plot1.png?raw=true)

## 3. Lattice Panel Functions

Lattice functions have a panel function which controls what happens inside each of the planet. Each panel's going to represent a subset of the data which is defined by the conditioning variable that you give it.

Example:
```[R]
set.seed(10)
x <- rnorm(100)
f <- rep(0:1, each = 50)
y <- x + f - f * x + rnorm(100, sd = 0.5)
f <- factor(f, labels = c("Group 1", "Group 2"))
xyplot(y ~ x | f, layout = c(2, 1))  ## Plot with 2 panels
```
In this example, you can see how to separate two groups

## 4. Lattice Panel Functions: Regression Line

Using lmline(x,y)


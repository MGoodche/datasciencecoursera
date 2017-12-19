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


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

```[R]
> library(lattice)
> library(datasets)
> xyplot(Ozone ~ Wind, data = airquality)
```

### 1. Introduction
What is ggplot2? ggplot2 is a package and it is the grammar of graphics. It's a powerful concept to kind of organize alll kind of data graphics

Types of functions:
- qplot = is a shortcut designed to be familiar if you're used to base plot(). It's a convenient wrapper for creating a number of different types of plots using a consistent calling scheme. It's great for allowing you to produce plots quickly. The factors are important because they indicate subsets of your data (Eg. you have the variable gender with man and women, and you want to plot only women data or the total)

Example:
```[R]
library(ggplot2)
str(mpg)
qplot(displ,hwy, data = mpg)
```

### 1. Under the lattice graphics system, what do the primary plotting functions like xyplot() and bwplot() return?

Answer: an object of class "trellis"

### 2. What is produced by the following code?
```[R]
library(nlme)
library(lattice)
xyplot(weight ~ Time | Diet, BodyWeight)
```
Answer: A set of 3 panels showing the relationship between weight and time for each diet.

### 3. Annotation of plots in any plotting system involves adding points, lines, or text to the plot, in addition to customizing axis labels or adding titles. Different plotting systems have different sets of functions for annotating plots in this way.

### Which of the following functions can be used to annotate the panels in a multi-panel lattice plot?

Answer: text()

### 4. The following code does NOT result in a plot appearing on the screen device.
```[R]
library(lattice)
library(datasets)
data(airquality)
p <- xyplot(Ozone ~ Wind | factor(Month), data = airquality)
```

Answer: The object 'p' has not yet been printed with the appropriate print method.

### 5. In the lattice system, which of the following functions can be used to finely control the appearance of all lattice plots?

Answer: 

### 6. What is ggplot2 an implementation of?

Answer: 

### 7. Load the 'airquality' dataset form the datasets package in R
```[R]
library(datasets)
data(airquality)
```
I am interested in examining how the relationship between ozone and wind speed varies across each month. What would be the appropriate code to visualize that using ggplot2?

Answer: 

### 8. What is a geom in the ggplot2 system?

Answer: 

### 9. When I run the following code I get an error:
```[R]
library(ggplot2)
library(ggplot2movies)
g <- ggplot(movies, aes(votes, rating))
print(g)
```
I was expecting a scatterplot of 'votes' and 'rating' to appear. What's the problem?

Answer: 

### 10. The following code creates a scatterplot of 'votes' and 'rating' from the movies dataset in the ggplot2 package. After loading the ggplot2 package with the library() function, I can run
```[R]
qplot(votes, rating, data = movies)
```
How can I modify the the code above to add a smoother to the scatterplot?

Answer: 

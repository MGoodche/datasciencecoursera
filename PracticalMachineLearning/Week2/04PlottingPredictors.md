#### 1. Introduction 
One of the most important components of building a machine learning algorithm or prediction model is understanding how the data actually look and how the data interact with each other. So, the best way to do that is actually by plotting the data, in particular plotting the predictors. 


#### 2. Feature Plot
This plot will plot basically all of the features against each other

```[R]
featurePlot(x=training[,c("age","education","jobclass")],
            y = training$wage,
            plot="pairs")
```

#### 2.QPlot

Qplot is a function in the ggplot2 package or just the plot function base R. 

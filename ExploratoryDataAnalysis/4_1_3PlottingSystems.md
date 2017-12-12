### 1- Base Plotting System 
The base plotting system is the oldest system in R. In this model, there is always a function that generates the plot, and, there are other functions that annotate things in the plot, like lines, labels, etc.

- Example of base plot
```[R]
> data(cars)
> with(cars, plot(speed, dist))
```

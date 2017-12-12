### 1- Base Plotting System 
The base plotting system is the oldest system in R. In this model, there is always a function that generates the plot, and, there are other functions that annotate things in the plot, like lines, labels, etc.

- Example of base plot
```[R]
> data(cars)
> with(cars, plot(speed, dist))
```
In this simple plot, you can add lines, labels, colours, etc

### 2- The Lattice system
For this system, it's neccesary to download the lattice package. Here, every plot is constructed with a single function called 'call'. Plots are created with a single this single function.

Thanks to this system you can create multiple plots on a page, combine variables to look multiple factors.

### 3- The ggplot2 System
The ggplot2 System is useful for conditioning plots. Mixes elements of Base and Lattice

### Important
You can't mix functions between systems.

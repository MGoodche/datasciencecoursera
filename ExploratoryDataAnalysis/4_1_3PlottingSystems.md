### 1- Base Plotting System 
The base plotting system is the oldest system in R. In this model, there is always a function that generates the plot, and, there are other functions that annotate things in the plot, like lines, labels, etc.

- Example of base plot
```[R]
> data(cars)
> with(cars, plot(speed, dist))
```
In this simple plot, you can add lines, labels, colours, etc

### 2- The Lattice system
For this system, it's neccesary to download the lattice package. Here, every plot is constructed with a single function called 'call'

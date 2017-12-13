### 1. Plotting System
The core plotting and graphics engine in R is encapsulated in the following packages:
- graphics
- grDevices
The core plotting system is called the base graphic system.

The lattice system is implemented using this packages:
- lattice
- grid

### 2. Base graphics
You are essentially creating two dimensional graphics, and you have to do it in a two phase process. The first part initializes the new plot and the second one, add thing to an existing plot. The base graphics have many parameters to set the gaphics as you want.
For more information:
```[R]
?par 
```
Some important base graphics parameters

- pch: the plotting symbol (default is open circle)
- lty: the line type (default is solid line), can be dashed, dotted, etc.
- lwd: the line width, specified as an integer multiple
- col: the plotting color, specified as a number, string, or hex code; the colors() function gives you a vector of colors by name
- xlab: character string for the x-axis label
- ylab: character string for the y-axis label


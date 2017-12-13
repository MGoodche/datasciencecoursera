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

### 3. Base Plotting Functions

- plot: make a scatterplot, or other type of plot depending on the class of the object being plotted
- lines: add lines to a plot, given a vector x values and a corresponding vector of y values (or a 2-column matrix); this function just connects the dots
- points: add points to a plot
- text: add text labels to a plot using specified x, y coordinates
- title: add annotations to x, y axis labels, title, subtitle, outer margin
- mtext: add arbitrary text to the margins (inner or outer) of the plot
- axis: adding axis ticks/labels

### 4. Base Plot with Annotation
```[R]
library(datasets)
with(university, plot(W, M))
title(main = "W and M in Spain universities")  ## Add a title
```
With Multiple Base plots
```[R]
par(mfrow = c(1, 3), mar = c(4, 4, 2, 1), oma = c(0, 0, 2, 0))
with(airquality, {
	plot(Wind, Ozone, main = "Ozone and Wind")
	plot(Solar.R, Ozone, main = "Ozone and Solar Radiation")
	plot(Temp, Ozone, main = "Ozone and Temperature")
	mtext("Ozone and Weather in New York City", outer = TRUE)
})
```

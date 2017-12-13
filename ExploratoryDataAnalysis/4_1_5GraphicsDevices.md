### 1. Definition
A graphic device is something where you can make a plot appear. For example: a window on your computer, a pdf file, a png file...When making a plot, you need to consider how the plot will be used to determine what device the plot should be sent to. The list of devices is found in ?Devices
The graphic device has only one place to go.
For example, to save the plot in a PDF device:
```[R]
## Open PDF device; create 'myplot.pdf' in my working directory
pdf(file = "myplot.pdf")  
## Create plot and send to a file (no plot appears on screen)
with(faithful, plot(eruptions, waiting))  
## Annotate plot; still nothing on screen
title(main = "Old Faithful Geyser data")  
## Close the PDF file device
dev.off()  
## Now you can view the file 'myplot.pdf' on your computer
```

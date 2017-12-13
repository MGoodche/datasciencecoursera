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

Copying a plot to another device can be useful because some plots require a lot of code and it can be a pain to type all that in again for a different device. Of course, it is always good to save the code that creates your plots, especially for any plots that you might publish or give to other people.
The dev.copy() can be used to copy a plot from one device to another. For example you might copy a plot from the screen device to a file device. The dev.copy2pdf() function is used specifically to copy a plot from the current device (usually the screen device) to a PDF file.

```[R]
library(datasets)
## Create plot on screen device
with(faithful, plot(eruptions, waiting))  
## Add a main title
title(main = "Old Faithful Geyser data")  
## Copy my plot to a PNG file
dev.copy(png, file = "geyserplot.png")  
## Don't forget to close the PNG device!
dev.off()  
```

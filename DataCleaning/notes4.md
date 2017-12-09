## Fixing character vectors - sub() and gsub()
Examples:
```[javascript]
> testName <- "this_is_a_test"
> sub("_","",testName)
[1] "thisis_a_test"
> gsub("_","",testName)
[1] "thisisatest"
```

## Finding values - grep() and grepl()
This is for searching specific values is variable names or variables.

Example: Search Alameda word in cameraData$intersection dataset
```[javascript]
> grep("Alameda",cameraData$intersection)
[1]  4  5 36
```
So it appears in the 4th, 5th and 36th element of the intersection variable


```[javascript]
table(grepl("Alameda",cameraData$intersection))
```
The grepl command will look for it in this intersection variable. And it will return a vector that's true whenever Alameda appears and false whenever Alameda doesn't appear. And so in this case you can see that in that three of the times the Alameda appears, and so if I make a table of the true and false values, it's true three of the times. 

cameraData2 <- cameraData[!grepl("Alameda",cameraData$intersection),]

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

Example1: Search Alameda word in cameraData$intersection dataset
```[javascript]
> grep("Alameda",cameraData$intersection)
[1]  4  5 36
```
So it appears in the 4th, 5th and 36th element of the intersection variable.

If for example, the word doesn't exist, it will return integer (0) when that value does not appear in the dataset:
```[javascript]
> grep("JeffStreet",cameraData$intersection)
integer(0)
```
Example2:
```[javascript]
> table(grepl("Alameda",cameraData$intersection))

FALSE  TRUE 
   77     3
```
The grepl command will look for it in this intersection variable. And it will return a vector that's true whenever Alameda appears and false whenever Alameda doesn't appear. And so in this case you can see that in that three of the times the Alameda appears, and so if I make a table of the true and false values, it's true three of the times. 

Example3:

We can also use value=TRUE as one of the parameters sent to grep and what will do is instead of telling you which of the elements it that Alameda appears in, it will actually return the values where Alameda appears. So you can see these are the three intersections where the Alameda appears in the camera data. 
```[javascript]
> grep("Alameda",cameraData$intersection,value=TRUE)
[1] "The Alameda  & 33rd St"   "E 33rd  & The Alameda"    "Harford \n & The Alameda"
```

### String functions
#### 1- NCHAR
The NCHAR command will tell you the number of characters that appear in a particular string. 
```[javascript]
library(stringr)
> nchar("Miriam Pavon")
[1] 12
```
In this case, there are twelve characters 

#### 2 - substr
The substr command will help you to take out part of the string
```[javascript]
> substr("Miriam Pavon",1,6)
[1] "Miriam"
> substr("Miriam Pavon",8,12)
[1] "Pavon"
```
#### 3 - paste and paste0
The paste command will allow you to paste two strings together
```[javascript]
> paste ("Miriam","Pavon is the best")
[1] "Miriam Pavon is the best"
```

The paste0 command allow you to paste two strings together without any space in between
```[javascript]
> paste0 ("Miriam","Pavon")
[1] "MiriamPavon"
```
#### 4 - str_trim
Trim whitespace from start and end of string.
```[javascript]
> str_trim("Miriam      ")
```
[1] "Miriam"

### Important Points
Names of variables should be:
- All lower case when possible
- Descriptive (Diagnosis versus Dx)
- Not duplicated
- Not have underscores or dots or white spaces

Variables with character values
- Should usually be made into factor variables (depends on application)
- Should be descriptive (use TRUE/FALSE instead of 0/1 and Male/Female versus 0/1 or M/F)

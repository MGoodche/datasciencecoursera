## Step 1: Merge the training and the test sets to create one data set.
## Step 1.1: Download zip file from website
if(!file.exists("./data")) dir.create("./data") ## Check existence of directory and create if doesn't exist
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, dest="./data/datafile.zip", mode="wb") ## Define the folder where the zip file should be unzipped
unzip ("datafile.zip",exdir = "./data") ## Unzip the file 

## To see the files, use dir(), list.files("./train"), list.files("./test") command
## > list.files("./train")
## [1] "Inertial Signals"  "subject_train.txt" "X_train.txt"      [4] "y_train.txt"      
## list.files("./test")
## [1] "Inertial Signals" "subject_test.txt" "X_test.txt"       "y_test.txt"

## Step 1.2: Load the data
train.x <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
train.y <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
train.subject <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
test.x <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
test.y <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
test.subject <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")

## dim(train.x)
## [1] 7352  561
## dim(train.y)
## [1] 7352    1
## dim(train.subject)
##  7352    1
## dim(test.x)
## [1] 2947  561
## dim(test.y)
## [1] 2947    1
## dim(test.subject)
## [1] 2947    1

## Step 1.3:Merge the training and the test sets
## For this step, it is neccesary to concatenate the both sets

dtrain <- cbind(train.subject, train.y, train.x) ## cbind() function combines vector, matrix or data frame by columns.
dtest <- cbind(test.subject, test.y, test.x) ## and the row number of the two datasets must be equal
## dim(dtrain)
## [1] 7352  563
## dim(dtest)
## [1] 2947  563
total <- rbind(dtrain, dtest) ## Merge the train and test data into data.allwith the rbind command.
## dim(total)
## [1] 10299   563

## Step 2: Extract only the measurements on the mean and standard deviation for each measurement. 
## Step 2.1: Read the features.txt file. This tells which variables in dt are measurements for the mean and standard deviation.
featurefiles <- read.table("features.txt", stringsAsFactors = FALSE)[,2]
## 
## head(featurefiles)
##   V1                V2
## 1  1 tBodyAcc-mean()-X
## 2  2 tBodyAcc-mean()-Y
## 3  3 tBodyAcc-mean()-Z
## 4  4  tBodyAcc-std()-X
## 5  5  tBodyAcc-std()-Y
## 6  6  tBodyAcc-std()-Z

## Step 2.2:  Extract mean and standard deviation of each measurements
featureIndex <- grep(("mean\\(\\)|std\\(\\)"), featurefiles)
finalData <- total[, c(1, 2, featureIndex+2)]
colnames(finalData) <- c("Subject", "Activity", featurefiles[featureIndex])



## Step 3: Uses descriptive activity names to name the activities in the data set
## Step 3.1: First, load activity_labels.txt
activities <- read.table("activity_labels.txt")
## These are the activities:
## > activities
##   V1                 V2
## 1  1            WALKING
## 2  2   WALKING_UPSTAIRS
## 3  3 WALKING_DOWNSTAIRS
## 4  4            SITTING
## 5  5           STANDING
## 6  6             LAYING

## Step 3.2: Let's remove "_" using the regular expression function gsub and change the characters to lower case
finalData$Activity <- factor(finalData$Activity, levels = activities[,1], labels = activities[,2])

## Check
## finalData$Activity[1:10]
## [1] standing standing standing standing standing standing standing standing standing standing
## Levels: walking walkingupstairs walkingdownstairs sitting standing laying

## Step 4: Appropriately labels the data set with descriptive variable names.
names(finalData) <- gsub("\\()", "", names(finalData))
names(finalData) <- gsub("^t", "time", names(finalData))
names(finalData) <- gsub("^f", "frequence", names(finalData))
names(finalData) <- gsub("-mean", "Mean", names(finalData))
names(finalData) <- gsub("-std", "Std", names(finalData))

## Step 5: Appropriately labels the data set with descriptive variable names.
library(dplyr)
groupData <- finalData %>%
        group_by(Subject, Activity) %>%
        summarise_each(funs(mean))
write.csv(groupData, "tidy.csv", row.names=FALSE)


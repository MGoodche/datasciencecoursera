## Step 1: Merge the training and the test sets to create one data set.
## Step 1.1: Download zip file from website
if(!file.exists("./data")) dir.create("./data") ## Check existence of directory and create if doesn't exist
file <- url "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download(url, dest="data.zip") ## Define the folder where the zip file should be unzipped
unzip ("data.zip") ## Unzip the file 

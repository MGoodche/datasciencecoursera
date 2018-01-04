# Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? Using the base plotting system, make a plot showing 
# the total PM2.5 emission from all sources for each of the years 1999, 2002, 2005, and 2008.
# 1. Loading provided datasets
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

# 2. To see information about the structure of the objects.
str(NEI)
str(SCC)

# 3. Unique Function returns a vector, data frame or array like x but with duplicate elements/rows removed.
# Thanks to this we check the years
unique(NEI$year)
## [1] 1999 2002 2005 2008

# 4. Now, we want to calculate the mean of the emissions but broken by years, so we will use the tapply() function
totalemissions <- tapply(NEI$Emissions, NEI$year, sum)


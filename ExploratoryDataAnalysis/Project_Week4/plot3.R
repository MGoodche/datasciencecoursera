# Of the four types of sources indicated by the type (point, nonpoint, onroad, nonroad) variable, which of these four sources have seen 
# decreases in emissions from 1999–2008 for Baltimore City? Which have seen increases in emissions from 1999–2008? Use the ggplot2 
# plotting system to make a plot answer this question.

# 1. Loading provided datasets
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

# 2. To see information about the structure of the objects.
str(NEI)
str(SCC)

# 3. Unique Function returns a vector, data frame or array like x but with duplicate elements/rows removed.
# Thanks to this we check the types.
unique(NEI$type)
 # [1] "POINT"    "NONPOINT" "ON-ROAD"  "NON-ROAD"

# 4. Subset data from Baltimore City
baltimorecity <- subset(NEI, fips == "24510")

#head(baltimorecity)
#        fips      SCC Pollutant Emissions  type year
#114288 24510 10100601  PM25-PRI     6.532 POINT 1999
#114296 24510 10200601  PM25-PRI    78.880 POINT 1999
#114300 24510 10200602  PM25-PRI     0.920 POINT 1999
#114308 24510 30100699  PM25-PRI    10.376 POINT 1999
#114325 24510 30183001  PM25-PRI    10.859 POINT 1999
#114329 24510 30201599  PM25-PRI    83.025 POINT 1999

#5. Now, we plot sum of the emissions of Baltimore City but broken by years and years, so we will use ggplot function directly
library(ggplot2)
ggplot(data=baltimorecity, aes(x=year, y=Emissions, fill=type)) +    
  geom_bar(stat="identity", position="stack") +
  ggtitle("Baltimore City Emissions by Type (1999-2008)")

# 6. Save the picture
dev.copy(png, file = "plot3.png" ,width = 500, height = 500)  
dev.off()





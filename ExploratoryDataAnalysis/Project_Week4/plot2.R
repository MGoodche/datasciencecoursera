# Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (fips == "24510") from 1999 to 2008? Use the base plotting
# system to make a plot answering this question.

# 1. Loading provided datasets
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

# 2. Subset data from Baltimore City
baltimorecity <- subset(NEI, fips == "24510")

#head(baltimorecity)
#        fips      SCC Pollutant Emissions  type year
#114288 24510 10100601  PM25-PRI     6.532 POINT 1999
#114296 24510 10200601  PM25-PRI    78.880 POINT 1999
#114300 24510 10200602  PM25-PRI     0.920 POINT 1999
#114308 24510 30100699  PM25-PRI    10.376 POINT 1999
#114325 24510 30183001  PM25-PRI    10.859 POINT 1999
#114329 24510 30201599  PM25-PRI    83.025 POINT 1999

# 3. Now, we want to calculate the total sum of the emissions of Baltimore City but broken by years, so we will use the tapply() function
totalemissions2 <- tapply(baltimorecity$Emissions, baltimorecity$year, sum)

# 4. Plot the result
barplot( 
  density = c( 0 , 10), angle = 75, width = 15,
   border = c( "darkgrey"),
  (totalemissions2),
  xlab="Year",
  ylab="PM2.5 Emissions",
  main="Total PM2.5 Emissions in Baltimore"
)

# 5. Save the picture
dev.copy(png, file = "plot2.png" ,width = 500, height = 500)  
dev.off()

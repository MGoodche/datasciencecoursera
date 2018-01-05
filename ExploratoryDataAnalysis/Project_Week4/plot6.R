# Compare emissions from motor vehicle sources in Baltimore City with emissions from motor vehicle sources in Los Angeles County,
# California (fips == "06037"). Which city has seen greater changes over time in motor vehicle emissions?

# 1. Loading provided datasets
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

# 2. To see information about the structure of the objects.
str(NEI)
str(SCC)

# 3.  Subset data from Baltimore City and Los Angeles 
baltimore_angeles <- subset(NEI, (fips == "24510" | fips == "06037") & type =="ON-ROAD")

# 4. Rename the cities using plyr package and the function rename
library(plyr)
baltimore_angeles <- rename(baltimore_angeles, c("fips"="City"))
baltimore_angeles$City <- factor(baltimore_angeles$City, levels=c("06037", "24510"), labels=c("Los Angeles", "Baltimore"))

# 5. Plot the result
 ggplot(baltimore_angeles, aes(x = factor(year), y = Emissions, fill = City)) +
        geom_bar(stat = "identity", width = 0.7) +
        facet_grid(.~City) + 
        labs(x = "Year", y = "Emissions (Tons)", title = "Comparison of Motor Vehicle Related Emissions: Baltimore City and Los Angeles (1999 - 2008)") +
        theme(plot.title = element_text(size = 14),
              axis.title.x = element_text(size = 12),
              axis.title.y = element_text(size = 12),
              strip.text.x = element_text(size = 12)) +
        theme_light()

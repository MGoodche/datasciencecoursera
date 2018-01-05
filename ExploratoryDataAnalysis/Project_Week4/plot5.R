# How have emissions from motor vehicle sources changed from 1999–2008 in Baltimore City?

# 1. Loading provided datasets
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

# 2. Subset data from Baltimore City and ON-ROAD
baltimore2 <- subset(NEI, fips == "24510" & type =="ON-ROAD")

# 3. Now, we want to calculate the total sum of the emissions of Baltimore City but broken by years,
# so we will use the tapply() function
baltimore2 <- aggregate(Emissions ~ year, baltimore2, sum)

# 4. Plot the results
library(ggplot2)
ggplot(baltimore2, aes(x = year, y = Emissions)) +
        geom_line(linetype="dashed", size = 1.5) +
        labs(x = "Year", y = "Emissions (Tons)", title = "Motor Vehicle PM2.5 Emissions in Baltimore (1999 - 2008)") +
        theme(plot.title = element_text(size = 14),
              axis.title.x = element_text(size = 12),
              axis.title.y = element_text(size = 12),
              strip.text.x = element_text(size = 12)) +
        theme_light()

# ggplot(data=baltimore2, aes(x=year, y=Emissions)) + geom_line(linetype="dashed", size = 1.5) + geom_point( size=5, shape=21, fill="blue") + xlab("Year") + ylab("Emissions (tons)") + ggtitle("Motor Vehicle PM2.5 Emissions in Baltimore")

# 5. Save the picture
dev.copy(png, file = "plot5.png" ,width = 500, height = 500)  
dev.off()

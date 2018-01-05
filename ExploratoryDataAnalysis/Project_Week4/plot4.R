# Across the United States, how have emissions from coal combustion-related sources changed from 1999–2008?

# 1. Loading provided datasets
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

# 2. To see information about the structure of the objects.
str(NEI)
str(SCC)

# 3. We grep the coal combustion word in SCC dataset

coalgrep <- as.character(SCC[grep("Coal",SCC$Short.Name, ignore.case = TRUE),1])

# 4. Subsetting the data only for Coal Combustion related sources
subdat <- subset(NEI, NEI$SCC %in% coalgrep)

# 5. Aggregate data based on years
data_plot <- aggregate(Emissions ~ year,subdat, sum)

# 6. Plot the data
qplot(year,Emissions,data = data_plot,
      geom = c("point", "path")) +
      labs(x = "Year", y = "Emissions", title = "Emissions from Coal Combustion related sources (1999 - 2008)") + theme_minimal() +
  geom_line(linetype="dashed", size = 1.5) + geom_point( size=5, shape=21, fill="grey")

# 7. Save the picture
dev.copy(png, file = "plot4.png" ,width = 500, height = 500)  
dev.off()

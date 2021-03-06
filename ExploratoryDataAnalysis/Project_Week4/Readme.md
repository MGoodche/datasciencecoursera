# 1. Introduction
<p align="justify">
Fine particulate matter (PM2.5) is an ambient air pollutant for which there is strong evidence that it is harmful to human health. In the United States, the Environmental Protection Agency (EPA) is tasked with setting national ambient air quality standards for fine PM and for tracking the emissions of this pollutant into the atmosphere. Approximatly every 3 years, the EPA releases its database on emissions of PM2.5. This database is known as the National Emissions Inventory (NEI). You can read more information about the NEI at the  <a href="http://www.epa.gov/ttn/chief/eiinformation.html">EPA National Emissions Inventory web site.</a> 
</p>
<p align="justify">
For each year and for each type of PM source, the NEI records how many tons of PM2.5 were emitted from that source over the course of the entire year. The data that you will use for this assignment are for 1999, 2002, 2005, and 2008. </p>

# 2. Data
<p align="justify">
The data for this assignment are available from the course web site as a single zip file:
<a href="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip"><b>FILE</b></a>
  
The zip file contains two files:
<p align="justify">
- <b>PM2.5 Emissions Data (summarySCC_PM25.rds):</b> This file contains a data frame with all of the PM2.5 emissions data for 1999, 2002, 2005, and 2008. For each year, the table contains number of tons of PM2.5 emitted from a specific type of source for the entire year. Here are the first few rows.
</p>
<p align="justify">
- <b>Source Classification Code Table (Source_Classification_Code.rds):</b> This table provides a mapping from the SCC digit strings in the Emissions table to the actual name of the PM2.5 source. The sources are categorized in a few different ways from more general to more specific and you may choose to explore whatever categories you think are most useful. For example, source “10100101” is known as “Ext Comb /Electric Gen /Anthracite Coal /Pulverized Coal”.
</p> 

# 3. Questions

#### 1. Have total emissions from PM2.5 decreased in the United States from 1999 to 2008?
<p align="justify">
The code is <a href="https://github.com/MGoodche/datasciencecoursera/blob/master/ExploratoryDataAnalysis/Project_Week4/plot1.R"><b>HERE</b></a> and the total emissions have decreased in the United States from 1999 to 2008: </p>
  
![plot1](plot1.png) 

#### 2. Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (fips == "24510") from 1999 to 2008? 
<p align="justify">
The code is <a href="https://github.com/MGoodche/datasciencecoursera/blob/master/ExploratoryDataAnalysis/Project_Week4/plot2.R"><b>HERE</b></a> and the total emissions in the Baltimore City haven't decreased in the United States from 1999 to 2008. From the range 1999 to 2002 have decreased, then tey increased, and then, againm the emissions have decreased.
</p>

![plot2](plot2.png) 

#### 3. Of the four types of sources indicated by the type (point, nonpoint, onroad, nonroad) variable, which of these four sources have seen decreases in emissions from 1999–2008 for Baltimore City? Which have seen increases in emissions from 1999–2008? 

<p align="justify"> The code is <a href="https://github.com/MGoodche/datasciencecoursera/blob/master/ExploratoryDataAnalysis/Project_Week4/plot3.R"><b>HERE</b></a> and the “NON-ROAD”, “NONPOINT” and “ON-ROAD” type of sources have shown a decrease in the total PM2.5 Emissions. “POINT” type of source, shows the increase in the total PM2.5 emissions from 1999-2005 but again a decrease in 2008. </p>

![plot3](plot3.png) 


#### 4. Across the United States, how have emissions from coal combustion-related sources changed from 1999–2008?

<p align="justify"> The code is <a href="https://github.com/MGoodche/datasciencecoursera/blob/master/ExploratoryDataAnalysis/Project_Week4/plot4.R"><b>HERE</b></a> and Coal combustion-related sources show a decreasing trend. </p>

![plot1](plot4.png) 

#### 5. How have emissions from motor vehicle sources changed from 1999-2008 in Baltimore City?

<p align="justify"> The code is <a href="https://github.com/MGoodche/datasciencecoursera/blob/master/ExploratoryDataAnalysis/Project_Week4/plot5.R"><b>HERE</b></a> and emissions from motor vehicle sources show a decreasing trend, so the total emissions from motor vehicle sources have decreased. </p>

![plot5](plot5.png) 

#### 6. Compare emissions from motor vehicle sources in Baltimore City with emissions from motor vehicle sources in Los Angeles County, California (fips == "06037"). Which city has seen greater changes over time in motor vehicle emissions? 

<p align="justify"> The code is <a href="https://github.com/MGoodche/datasciencecoursera/blob/master/ExploratoryDataAnalysis/Project_Week4/plot6.R"><b>HERE</b></a> and Los Angeles County has seen the greatest changes over time in motor vehicle emissions  </p>

![plot6](plot6v.png) 

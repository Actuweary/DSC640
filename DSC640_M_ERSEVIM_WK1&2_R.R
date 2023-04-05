'Michael Ersevim - DSC640'
'Week 1&2 assignment'

# Set wd to find and store files
setwd("C:/Users/Kate/Documents/Bellevue DS classes/DSC640")

#Needed to install some packages first
install.packages("ggplot2")
install.packages("readxl")
install.packages("lessR") #For Donut graph

# Calling libraries
library(ggplot2)
library(readxl)
library(lessR)

# Read in data
data <- read_excel("hotdog-contest-winners.xlsm")
print(data) #Test it worked right

#Aggregate data into new file 'b'
b <- aggregate(data$`Dogs eaten`, by=list(data$Country), FUN=mean)

# Horizontal bar plot, then vertical
barplot (b$x, main = 'Avg hotdogs eaten per country', axisnames=TRUE, xlab="Hot dogs", ylab="Country", 
         names = b$Group.1, horiz = TRUE)

barplot (b$x, main = 'Avg hotdogs eaten per country', axisnames=TRUE, xlab="Hot dogs", ylab="Country", 
         names = b$Group.1)

# Plot the pie chart with title
pie(b$x, b$Group.1, main = "Avg Hot dogs eaten by country")

# Donut chart - of Number of wins by COuntry
PieChart(Country, data = data,
         main = 'Proportion of wins by country')



'Michael Ersevim - DSC640'
'Week 3&4 graphs assignment'

# Set wd to find and store files
setwd("C:/Users/Kate/Documents/Bellevue DS classes/DSC640")

# Calling libraries
library(ggplot2)
library(readxl)
library(lessR)

# Read in data
data <- read_excel("world-population.xlsm")
pop <- data$Population/1000000000
print(data) #Test it worked right

# Horizontal bar plot, then vertical
plot(data$Year, pop, type='l', main='World Population - line', xlab='Year', 
     ylab='Population in Billions', ylim = c(3, 7))

plot(data$Year, pop, type='s', main='World Population - stepped', xlab='Year', 
     ylab='Population in Billions', ylim = c(3, 7))





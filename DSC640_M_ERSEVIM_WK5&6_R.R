'Michael Ersevim - DSC640'
'Week 5&6 graphs assignment'

# Set wd to find and store files
setwd("C:/Users/Kate/Documents/Bellevue DS classes/DSC640")

# Calling libraries
library(ggplot2)
library(readxl)
library(lessR)
library(dplyr)
library(tidyverse)
library(treemap)

# Read in data
data_pop <- read_excel("top_20_population.xlsx")
data_stock <- read_excel("DSC640_stock_prices.xlsx")

print(data_pop) #Test it worked right
print(data_stock) #Test it worked right

#Create stacked area plot of stock prices
ggplot(data_stock, aes(x=Year, y=Price, fill=Stock)) + geom_area() + 
  ggtitle ('Historical Stock Prices for three correlated stocks')

#Create treemap to display relative sizes of top 21 countries
treemap(data_pop,
        index="Country",
        vSize="Population",
        type="index")


library(waterfalls)
library(ggplot2)
library(readxl)
library(plotly)

setwd("C:/Users/Kate/Documents/Bellevue DS classes/DSC640")
chickwts <- chickwts
# Boxplot of Chick weights by feed-type
boxplot(weight~feed, data=chickwts, main="Chick weights by feed-type",
        xlab="Chick ID", ylab="Weight in Grams")

cw <- read.csv('chick_weights.csv')
#Scatterplot of weights
plot(cw$id, cw$weight)

# Load the data for making a Waterfall chart
wf <- read_excel('Waterfall data R.xlsx')
waterfall(wf, calc_total = TRUE)

#Making a bullet chart using code found online - very basic since difficult
#Source: https://plotly.com/r/bullet-charts/ (documentation)

fig <- plot_ly(
  type = "indicator",
  mode = "number+gauge+delta",
  value = 220,
  domain = list(x = c(0, 1), y= c(0, 1)),
  title = list(text = "<b>Profit</b>"),
  delta = list(reference = 200),
  gauge = list(
    shape = "bullet",
    axis = list(range = list(NULL, 300)),
    threshold = list(
      line = list(color = "red", width = 2),
      thickness = 0.75,
      value = 280),
    steps = list(
      list(range = c(0, 150), color = "lightgray"),
      list(range = c(150, 250), color = "gray"))),
  height = 150, width = 600) 
fig <- fig %>%
  layout(margin = list(l= 100, r= 10))

fig

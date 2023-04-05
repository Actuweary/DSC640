setwd("C:/Users/Kate/Documents/Bellevue DS classes/DSC640")

# Load the data for making a heat map
bball <- read.csv('ppg2008.csv', sep=",", header=TRUE)
row.names(bball) <- bball$Name #Defines the players' names as a row
bball <- bball[,2:20] #Now just the data
bball_matrix <- data.matrix(bball) #and is put in a matrix
bball_heatmap <- heatmap(bball_matrix, Rowv=NA, Colv=NA, col=heat.colors(256),
                         scale='column', margins=c(5,10))

#Now for a spatial map
library(maps)

costco <- read.csv('costcos-geocoded.csv', sep=",", header=TRUE)
map(database="state", col="#cccccc")
symbols(costco$Longitude, costco$Latitude, bg="#e2373f", fg="#ffffff", lwd=0.5,
        circles=rep(1, length(costco$Longitude)), inches=0.05, add=TRUE)

#And lastly, a violin plot
library(vioplot)
data <- chickwts #this data is apparently already loaded in the library

vioplot(data$weight ~ data$feed, col = 2:length(levels(data$feed)),
        xlab = "Feed", ylab = "Weight") #As directed by the Yau textbook

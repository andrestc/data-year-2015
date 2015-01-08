# Setting working directory to current
this.dir <- dirname(parent.frame(2)$ofile)
setwd(this.dir) 

# Reading data
data <- read.csv("./data/bike_trip_data.csv")

# Problem 1: What was the average total time (in minutes) used by a bicycle in the data?
# The Duration column seems to be in seconds (analysing start and end dates)
averageMinsDuration <- mean(data$Duration / 60)
paste("Problem 1:", averageMinsDuration)

# Problem 2: What was the most popular day by trip frequency in this dataset?
datesCounts <- table(as.Date(data$Start.Date, format = "%m/%d/%y")) # convert to a count table of dates
maxCount <- max(datesCounts) # get max date
mostFrequent <- names(datesCounts[ datesCounts == maxCount ]) # get the name of the day with most counts
paste("Problem 2:", mostFrequent)
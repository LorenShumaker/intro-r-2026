# Load libraries
library(dplyr)
library(tidyr)
library(ggplot2)
library(summarytools)

# Load raw data
raw_15min <- read.csv("data/raw/agg_15min_data.csv", stringsAsFactors = F)

# Structure of data
str(raw_15min)


# Preliminary data exploration
head(raw_15min)
tail(raw_15min)

summary(raw_15min)


glimpse(raw_15min)


table(raw_15min$occupancy)


dfSummary(raw_15min)


raw_15min[2, ]
raw_15min[ , 2]
raw_15min[2, 3]

mean(raw_15min$speed)
hist(raw_15min$occupancy)

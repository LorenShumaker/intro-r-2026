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



dfSummary(raw_15min)

raw_15min[2, ]
raw_15min[ , 2]
raw_15min[2, 3]

mean(raw_15min$speed)
hist(raw_15min$occupancy)


# learn about filters
occ_20plus <- raw_15min |>
  filter(occupancy > 20)


# learn about filters
occ_20plus <- raw_15min |>
  filter(occupancy > 20)


occ_10plus_sp80 <- raw_15min |>
  filter(occupancy < 20 & speed > 80)
table(occ_10plus_sp80$detector_id)


# working with NA's
blank_example <- raw_15min ~>
  filter(is.na(speed))
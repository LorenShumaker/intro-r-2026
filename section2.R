# Load libraries
library(dplyr)
library(tidyr)
library(ggplot2)
library(plotly)

# load clean dataset
clean_df <- readRDS("data/clean_data.rds")

speed_occ_fig <- clean_df |>
  ggplot(aes(x = speed, y = occupancy, color = as.factor(detector_id))) + 
  geom_point()

speed_occ_fig


speed_vol_fig <- clean_df |>
  filter(detector_id < 101100) |>
  filter(speed > 40) |>
  ggplot(aes(x = speed, y = volume, color = as.factor(detector_id))) + 
  geom_point()

speed_vol_fig



st_sp_fig <- clean_df |>
  # filter(detector_id < 101100) |>
  # filter(speed > 40) |>
  ggplot(aes(x = starttime, y = speed, color = as.factor(detector_id))) + 
  geom_point()

st_sp_fig


det_speed_figly <- ggplotly(speed_occ_fig)
det_speed_figly
library(ggplot2)
library(dplyr)

sta_figure_function <- function(stid, measure){
  target_sta <- stations_df |>
    filter(stationid == stid) |>
    right_join(starttime_seq, by = "starttime") |>
    ggplot(aes(x = starttime, y = {{measure}})) +
    geom_line(color = "antiquewhite3") +
    geom_point(color = "violetred3", size = 0.5) +
    scale_x_datetime(
      date_breaks = "1 day",
      date_labels = "%Y-%m-%d",
      guide = guide_axis(angle = 45)
    ) +
    xlab(NULL) +
    theme_bw()
  target_sta
}
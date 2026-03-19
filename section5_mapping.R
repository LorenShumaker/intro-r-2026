# load libraries
library (dplyr)
library (tidyr)
library (leaflet)
library (sf)
library (tigris)

raw_stations <- read.csv("data/raw/stations.csv", stringsAsFactors = F)

stations <- raw_stations |>
  filter(end_date == "") |>
  select(
    stationid,
    locationtext,
    lon,
    lat,
    milepost,
    agency
  )

stations_map <- stations |>
  # filter(lat != 0) |>
  # filter(lat != -1) |>
  leaflet() |>
  addProviderTiles(providers$CartoDB.Positron) |>
  addCircleMarkers(
    lng = stations$lon,
    lat = stations$lat,
    color = "yellowgreen",
    radius = 2,
    popup = paste(
      "<h2 style='color:#9E394B; font-weight:bold;'>", "Stationid: ", stations$stationid, "</h2>",
      "<span style='color:#9E394B; font-weight:bold;'>", "Description: ", "</span>", stations$locationtext, "<br>",
      "<span style='color:#9E394B; font-weight:bold;'>", "Agency: ", "</span>", stations$agency, "<br>",
      "<span style='color:#9E394B; font-weight:bold;'>", "MP: ", "</span>", stations$milepost
      )
  )
stations_map

va_counties <- counties(state = "VA")

va_counties <- st_transform(va_counties, crs = '+proj=longlat +datum=WGS84')

va_county_map <- va_counties |>
  leaflet() |>
  addProviderTiles(providers$OpenStreetMap) |>
  addPolygons(
    highlightOptions = highlightOptions(color = "white", weight = 2, bringToFront = T),
    popup = paste(
      "NAME: ", va_counties$NAME, "<br>"
    )
  )
va_county_map






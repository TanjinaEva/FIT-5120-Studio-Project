library(ggplot2)
library(dplyr)
library(stringr)
library(plotly)
library(leaflet)

# The dataset is provided in the gapminder library
data1 <- read.csv("buttbin.csv")
#leaflet map for site location
map1 <- leaflet(data1) %>% addTiles() %>% 
  addMarkers(~Longitude, ~Latitude, label = ~as.character(Location),labelOptions = labelOptions(noHide = F))
map1 

data2 <- read.csv("Litterbin.csv")
#leaflet map for site location
map2 <- leaflet(data2) %>% addTiles() %>% 
  addMarkers(~Longitude, ~Latitude, label = ~as.character(Location),labelOptions = labelOptions(noHide = F))
map2 

data3 <- read.csv("syringebin.csv")
#leaflet map for site location
map3 <- leaflet(data3) %>% addTiles() %>% 
  addMarkers(~Longitude, ~Latitude, label = ~as.character(Location),labelOptions = labelOptions(noHide = F))
map3

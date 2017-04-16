library("leaflet")
accentureIcon <- makeIcon(
  iconUrl = "http://static.dnaindia.com/sites/default/files/2015/08/07/363005-accenture-logo-twitter.jpeg",
  iconWidth = 31*215/230, iconHeight = 31,
  iconAnchorX = 31*215/230/2, iconAnchorY = 16
)

my_map <- leaflet() %>%
  addTiles() %>%
  addMarkers(lng=-100.377295, lat=25.670673
             , popup="Accenture: Place of my dream job", icon=accentureIcon)
my_map

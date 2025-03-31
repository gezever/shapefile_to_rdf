library(jsonlite)
library(dplyr)
require(sf)

setwd('/home/gehau/git/shapefile_to_rdf')

#https://download.vlaanderen.be/product/10770/configureer?formaat=shapefile
#https://tutorials.inbo.be/tutorials/spatial_crs_coding/

to_jsonld <- function(dataframe) {
  # lees context
  context <- jsonlite::read_json("ontology/waterlopen_context.json")
  # jsonld constructie
  df_in_list <- list('@graph' = dataframe, '@context' = context)
  df_in_json <- toJSON(df_in_list, auto_unbox=TRUE)
  return(df_in_json)
}

df <- read_sf(dsn = "VHA_waterlopen_20250326_Shapefile/Shapefile/.", layer = "Wlas")%>% 
  st_as_sf(coords = geometry)%>% 
  st_transform(crs = 4326)
df$geometry <- st_as_text(df$geometry)
df <- df %>% mutate_all(as.character)

df$type <- paste('code:Wlas') 
df$BEHEER <- paste('beheerder:',df$BEHEER, sep = "") 
df$BEHEER <- gsub(' ', '', df$BEHEER)
df$BEKNR <- paste('bekken:',df$BEKNR, sep = "") 
df$CATC <- paste('categorie:',df$CATC, sep = "") 
df$STRMGEB <- paste('stroomgebied:',df$STRMGEB, sep = "") 
df$STRMGEB <- gsub(' ', '_', df$STRMGEB)
df$WTRLICHC <- paste('waterlichaam:',df$WTRLICHC, sep = "") 
write(to_jsonld(df), "rdf/wlas.jsonld")
system("riot --formatted=turtle rdf/wlas.jsonld > rdf/wlas.ttl", intern = TRUE)

df <- read_sf(dsn = "VHA_waterlopen_20250326_Shapefile/Shapefile/.", layer = "VhaCattraj")%>%  
  st_as_sf(coords = geometry)%>% 
  st_transform(crs = 4326)
df$geometry <- st_as_text(df$geometry)
df <- df %>% mutate_all(as.character)
df$CATC <- paste('categorie:',df$CATC, sep = "") 
df$type <- paste('code:VhaCattraj') 
write(to_jsonld(df), "rdf/vhacattraj.jsonld")
system("riot --formatted=turtle rdf/vhacattraj.jsonld > rdf/vhacattraj.ttl", intern = TRUE)

df <- read_sf(dsn = "VHA_waterlopen_20250326_Shapefile/Shapefile/.", layer = "Vhag")%>%  
  st_as_sf(coords = geometry)%>% 
  st_transform(crs = 4326)
df$geometry <- st_as_text(df$geometry)
df <- df %>% mutate_all(as.character)
df$type <- paste('code:Vhag') 
write(to_jsonld(df), "rdf/vhag.jsonld")
system("riot --formatted=turtle rdf/vhag.jsonld > rdf/vhag.ttl", intern = TRUE)

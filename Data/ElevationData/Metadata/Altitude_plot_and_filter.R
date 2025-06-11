library(giscoR)
library(leaflet)
library(sf)
library(tidyverse)
#shapefile_path <- "C:\Users\2692812C\OneDrive - University of Glasgow\Desktop\Projects\8 Scarface\DatiMorfometrici\georef-italy-comune\georef-italy-comune-millesime.shp"
#shapefile_path <- "C:/Users/2692812C/OneDrive - University of Glasgow/Desktop/Projects/8 Scarface/DatiMorfometrici/georef-italy-comune/georef-italy-comune-millesime.shp"
shapefile_path <- "C:\\Users\\2692812C\\OneDrive - University of Glasgow\\Desktop\\Projects\\8 Scarface\\DatiMorfometrici\\georef-italy-comune\\georef-italy-comune-millesime.shp"


italy_comuni <- st_read(shapefile_path)
head(italy_comuni)
# Sort the shapefile dataset by municipality name
shapefile_data_sorted <- italy_comuni %>% arrange(com_name)  
library(readxl)
Elab_Altimetrie_DEM <- read_excel("C:/Users/2692812C/OneDrive - University of Glasgow/Desktop/Projects/8 Scarface/GeographicStatistics/Altitudini_comuni_DEM/Elab_Altimetrie_DEM.xlsx")

View(shapefile_data_sorted)
colnames() <- make.unique(colnames(shapefile_data_sorted))


Elab_Altimetrie_DEM <- Elab_Altimetrie_DEM %>%
  mutate(com_code = sprintf("%06d", PRO_COM))

merged_data <- shapefile_data_sorted %>%
  left_join(Elab_Altimetrie_DEM, by = "com_code")

library(leaflet)
library(sf)
library(dplyr)

# Ensure geometry is valid (optional but good practice)
merged_data <- st_make_valid(merged_data)

# Create a color palette for ALT_MAX
pal <- colorNumeric(
  palette = "YlOrRd",
  domain = merged_data$ALT_MAX,
  na.color = "transparent"
)

subset.data.frame=merged_data %>% filter(reg_name== c("Lombardia", "Piemonte", "Veneto", "Emilia-Romagna"))

# Create the Leaflet map
leaflet(data = subset.data.frame) %>%
  addTiles() %>%
  addPolygons(
    fillColor = ~pal(ALT_MAX),
    color = "#444444",
    weight = 0.5,
    fillOpacity = 0.7,
    smoothFactor = 0.2,
    label = ~paste0(com_name, ": ", ALT_MAX, " m"),
    highlightOptions = highlightOptions(
      color = "white",
      weight = 2,
      bringToFront = TRUE
    )
  ) %>%
  addLegend(
    pal = pal,
    values = ~ALT_MAX,
    title = "Max Altitude (m)",
    position = "bottomright"
  )


saveRDS(subset.data.frame, "subset_data.rds")
write.csv(subset.data.frame, "subset_data.csv", row.names = FALSE)

str(subset.data.frame)

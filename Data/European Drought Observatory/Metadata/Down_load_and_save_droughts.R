install.packages(c( "stars" ,"ncdf4"))
library(sf)
library(stars)
library(ncdf4)
library(giscoR)
library(dplyr)

# Get NUTS2 boundaries from Eurostat
nuts2 <- gisco_get_nuts(nuts_level = 2, year = 2021, epsg = "3035")

# Subset to target NUTS2 regions
target_nuts <- c("ITC1", "ITH3", "ITC4", "ITH5")
nuts_target <- nuts2 %>% filter(NUTS_ID %in% target_nuts)
# Replace with your actual NetCDF file path


library(stars)
library(dplyr)
library(sf)
library(giscoR)

# 1. Define directory and list only .tif files
folder <- "C:/Users/2692812C/Downloads/cdinx_m_edo_20250101_20250501_t"
files <- list.files(folder, pattern = "\\.tif$", full.names = TRUE)

# 2. Read NUTS2 regions and filter targets
nuts2 <- gisco_get_nuts(nuts_level = 2, year = 2021, epsg = "3035")
target_nuts <- c("ITC1", "ITH3", "ITC4", "ITH5")
nuts_target <- filter(nuts2, NUTS_ID %in% target_nuts)

# 3. Output folder
raster_dir <- "C:/Users/2692812C/OneDrive - University of Glasgow/Desktop/Projects/8 Scarface/Download indicators - EDO"
out_raster_dir <- file.path(raster_dir, "processed_rasters")
dir.create(out_raster_dir, showWarnings = FALSE, recursive = TRUE)

# 4. Loop through files
for (i in seq_along(files)) {
  file <- files[i]
  filename <- basename(file)
  
  # Read raster
  r <- read_stars(file)
  r <- st_transform(r, st_crs(nuts_target))  # Ensure CRS match
  
  # Crop/mask using st_crop or st_intersection
  r_cropped <- r %>% st_crop(nuts_target)  # or st_intersection if needed
  
  # Output path
  out_file <- file.path(out_raster_dir, paste0(tools::file_path_sans_ext(filename), "_masked.tif"))
  print(i)
  # Write result using stars
  write_stars(r_cropped, out_file, options = "COMPRESS=LZW", overwrite = TRUE)
}


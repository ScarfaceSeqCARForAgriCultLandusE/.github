library(terra)
library(giscoR)
library(sf)
library(tools)
# Define download URLs and corresponding years
urls <- c(
  
  "https://sdi.eea.europa.eu/datashare/s/bSZyqrLBqxaC48K/download",  # 2011
  "https://sdi.eea.europa.eu/datashare/s/yy47j9E2G9pxsxE/download",  # 2012
  "https://sdi.eea.europa.eu/datashare/s/ciEWkbcczCaQsbz/download",  # 2013
  "https://sdi.eea.europa.eu/datashare/s/XGpig6iskqq3J5k/download",  # 2014
  "https://sdi.eea.europa.eu/datashare/s/rQYRPm9BZEA4QNd/download",   # 2015
  "https://sdi.eea.europa.eu/datashare/s/sFRwQzZodkrtB2r/download",      # 2016 
  "https://sdi.eea.europa.eu/datashare/s/3r7kAF9wd2PDp2k/download", # 2017
  "https://sdi.eea.europa.eu/datashare/s/FAD6NYbxXkfbSWY/download",      # 2018
  "https://sdi.eea.europa.eu/datashare/s/pBpSLRXX689EjxM/download",  # 2019
  "https://sdi.eea.europa.eu/datashare/s/63KNBpk4zK5nZKs/download",  # 2020
  "https://sdi.eea.europa.eu/datashare/s/YP66f6GgyF4DHH9/download"  # 2021
  
)

years <- 2011:2021
# Download each file and save with year-based filename
for (i in seq_along(urls)) {
  destfile <- paste0("EEA_data_PM25", years[i], ".zip")
  download.file(urls[i], destfile, mode = "wb")
  message("Downloaded: ", destfile)
}


# Set base directory
base_dir <- "C:/Users/2692812C/OneDrive - University of Glasgow/Desktop/Projects/8 Scarface/EEA_AIRquality2022"
library(terra)
library(tools)
# Define root directory containing subfolders
#raster_dir <- "C:\Users\2692812C\OneDrive - University of Glasgow\Desktop\Projects\8 Scarface\EEA_AIRquality2022\PM10"
raster_dir <- "C:\\Users\\2692812C\\OneDrive - University of Glasgow\\Desktop\\Projects\\8 Scarface\\EEA_AIRquality2022\\PM25"

# Load NUTS2 and extract target regions
nuts2 <- gisco_get_nuts(nuts_level = 2, year = 2021, epsg = "3035")
target_nuts <- c("ITC1","ITH3","ITC4", "ITH5")  # Piedmont, Veneto, Lombardy, Emilia-Romagna
regions <- subset(nuts2, NUTS_ID %in% target_nuts)
regions_vect <- vect(regions)  
# Create output subdirectories
out_raster_dir <- file.path(raster_dir, "processed_rasters")
out_csv_dir <- file.path(raster_dir, "raster_data_csv")
dir.create(out_raster_dir, showWarnings = FALSE)
dir.create(out_csv_dir, showWarnings = FALSE)

# Get all subdirectories recursively
subdirs <- list.dirs(raster_dir, recursive = TRUE, full.names = TRUE)
subdirs
# Loop through each subdirectory and look for the TIFF file
for (subdir in subdirs) {
  tif_files <- list.files(subdir, pattern = "EEA_1kmgrid_.*_pm25_avg\\.tif$", full.names = TRUE)
  for (file in tif_files) {
    name <- file_path_sans_ext(basename(file))
    
    # Load and process raster
    r <- rast(file)
    r_crop <- crop(r, regions_vect)
    r_mask <- mask(r_crop, regions_vect)
    
    # Save modified raster
    out_raster_file <- file.path(out_raster_dir, paste0(name, "_masked.tif"))
    writeRaster(r_mask, filename = out_raster_file, overwrite = TRUE)
    
    # Convert to dataframe and save as CSV
    df <- as.data.frame(r_mask, xy = TRUE, na.rm = TRUE)
    out_csv_file <- file.path(out_csv_dir, paste0(name, ".csv"))
    write.csv(df, out_csv_file, row.names = FALSE)
    
    # Optional: plot
    plot(r_mask, main = paste("PM25₃:", name), col = terrain.colors(20))
    lines(regions_vect, col = "black")
  }
}



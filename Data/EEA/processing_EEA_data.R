library(terra)
library(giscoR)
library(sf)
library(tools)  # for file_path_sans_ext

# Set base directory
base_dir <- "C:/Users/2692812C/OneDrive - University of Glasgow/Desktop/Projects/8 Scarface/EEA_AIRquality2022"

# Load NUTS2 and extract target regions
nuts2 <- gisco_get_nuts(nuts_level = 2, year = 2021, epsg = "3035")
target_nuts <- c("ITC1", "ITC4", "ITH5")  # Piedmont, Lombardy, Emilia-Romagna
regions <- subset(nuts2, NUTS_ID %in% target_nuts)
regions_vect <- vect(regions)  # for terra functions

# Get all subdirectories
sub_dirs <- list.dirs(base_dir, recursive = TRUE, full.names = TRUE)

# Loop over each folder
for (raster_dir in sub_dirs) {
  
  tif_files <- list.files(raster_dir, pattern = "\\.tif$", full.names = TRUE)
  
  # Skip if no .tif files in the folder
  if (length(tif_files) == 0) next
  
  message("Processing folder: ", raster_dir)
  
  # Create output subdirectories
  out_raster_dir <- file.path(raster_dir, "processed_rasters")
  out_csv_dir <- file.path(raster_dir, "raster_data_csv")
  dir.create(out_raster_dir, showWarnings = FALSE)
  dir.create(out_csv_dir, showWarnings = FALSE)
  
  for (i in seq_along(tif_files)) {
    file <- tif_files[i]
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
    
    # Optional: plot (can comment out if processing many files)
    plot(r_mask, main = paste("O₃:", name), col = terrain.colors(20))
    lines(regions_vect, col = "black")
  }
}

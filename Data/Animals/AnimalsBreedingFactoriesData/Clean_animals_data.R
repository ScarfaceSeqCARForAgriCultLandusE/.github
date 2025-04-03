library(readxl)
library(readxl)
library(dplyr)
library(purrr)

# Set folder path
folder_path <- "C:/Users/2692812C/OneDrive - University of Glasgow/Desktop/Projects/8 Scarface/Animali"

# List all Excel files in the folder
excel_files <- list.files(path = folder_path, pattern = "\\.xlsx$", full.names = TRUE)

# Define regions of interest
selected_regions <- c("EMILIA ROMAGNA", "VENETO", "LOMBARDIA", "PIEMONTE")

# Function to process one Excel file
process_animals_file <- function(file_path) {
  # Read file
  data <- read_excel(file_path)
  
  # Set first row as column names, drop first row
  colnames(data) <- data[1, ]
  data <- data[-1, ]
  
  # Filter regions
  data_filtered <- data %>%
    filter(REGIONE %in% selected_regions)
  
  return(data_filtered)
}

library(stringr)
# Create named list of filtered datasets
filtered_list <- excel_files %>%
  set_names(~ str_remove(basename(.x), "\\.xlsx$")) %>%  # Name each element by file name (without .xlsx)
  map(process_animals_file)


walk2(filtered_list, names(filtered_list), ~ 
        write.csv(.x, file = file.path(folder_path, paste0(.y, "_cleaned.csv")), row.names = FALSE)
)



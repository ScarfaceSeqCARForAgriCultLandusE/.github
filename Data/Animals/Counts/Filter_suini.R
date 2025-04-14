
# Load required libraries
library(readxl)    # For reading Excel files
library(writexl)   # For writing Excel files
library(dplyr)     # For data manipulation

# Define folder paths
input_folder <- "C:\\Users\\2692812C\\OneDrive - University of Glasgow\\Desktop\\Projects\\8 Scarface\\Animali\\Counts\\MetaData\\suini"
output_folder <- "C:\\Users\\2692812C\\OneDrive - University of Glasgow\\Desktop\\Projects\\8 Scarface\\Animali\\Counts"  # Folder to store filtered files

# Create the output folder if it does not exist
if (!dir.exists(output_folder)) {
  dir.create(output_folder)
}

# List all .xlsx files in the input folder
files <- list.files(path = input_folder, pattern = "\\.xlsx$", full.names = TRUE)
files
# Define regions of interest
regioni <- c("PIEMONTE", "LOMBARDIA", "EMILIA ROMAGNA", "VENETO")

# Process each file
for(file in files) {
  # Read the Excel file without headers (all rows as data)
  data <- read_excel(file, col_names = FALSE)
  
  # Set the column names to the values in the second row 
  # (adjust the row index if your header row is different)
  colnames(data) <- as.character(data[3, ])
  
  # Remove the first row 
  # (if you want to keep row 3 as data, then remove only the now redundant row 1)
  data <- data[-c(1,2,3), ]
  data
  # Filter rows where the column 'REGIONE' matches one of the regions of interest.
  # Ensure that the column name "REGIONE" exactly matches what is in your Excel file.
  data_filtered <- subset(data, REGIONE %in% regioni)
  
  # Prepare output file name (appends "_filtered" to the original file name)
  out_file <- file.path(output_folder,
                        paste0(tools::file_path_sans_ext(basename(file)), "_filtered.xlsx"))
  
  # Write the filtered data to a new Excel file
  write_xlsx(data_filtered, out_file)
  
  # Optional: Print a message indicating the file has been processed
  message("Processed and saved: ", out_file)
}

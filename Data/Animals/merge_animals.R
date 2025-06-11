setwd("C:/Users/2692812C/OneDrive - University of Glasgow/Desktop/Projects/8 Scarface/Animali/Counts")
library(readxl)
library(dplyr)
library(tidyr)
# Read the Excel file
file_path <- "C:/Users/2692812C/OneDrive - University of Glasgow/Desktop/Projects/8 Scarface/Animali/Counts/bufalini_2011_filtered.xlsx"
animal_counts2011 <- read_excel(file_path)

# Assuming your dataset is called `df`
df_summary <- animal_counts %>%
  mutate(`TOTALE CAPI` = as.numeric(`TOTALE CAPI`)) %>%
  group_by(COMUNE, RAZZA, `ORIENTAMENTO PRODUTTIVO`) %>%
  summarise(TOTALE_CAPI_SUM = sum(`TOTALE CAPI`, na.rm = TRUE), .groups = "drop")

df_orientamento_summary <- df_summary %>%
  # Summarize by COMUNE and ORIENTAMENTO PRODUTTIVO
  group_by(COMUNE, `ORIENTAMENTO PRODUTTIVO`) %>%
  summarise(TOTALE = sum(TOTALE_CAPI_SUM, na.rm = TRUE), .groups = "drop") %>%
  # Pivot to wide format
  pivot_wider(
    names_from = `ORIENTAMENTO PRODUTTIVO`,
    values_from = TOTALE,
    values_fill = list(TOTALE = 0)
  ) %>%
  # Add total column correctly
  mutate(TOTALE_CAPI_SUM = rowSums(select(., c(CARNE, LATTE, MISTO)), na.rm = TRUE))


library(readxl)
library(dplyr)
library(tidyr)
library(stringr)
library(purrr)

# Set your folder path
folder_path <- "C:/Users/2692812C/OneDrive - University of Glasgow/Desktop/Projects/8 Scarface/Animali/Counts"

# List all files matching the pattern (e.g., bufalini_2011_filtered.xlsx)
file_list <- list.files(path = folder_path, pattern = "^bufalini_\\d{4}_filtered\\.xlsx$", full.names = TRUE)

# Function to process each file
process_file <- function(file_path) {
  # Read the Excel file
  animal_counts <- read_excel(file_path)
  
  # Convert 'TOTALE CAPI' to numeric and summarize
  df_summary <- animal_counts %>%
    mutate(`TOTALE CAPI` = as.numeric(`TOTALE CAPI`)) %>%
    group_by(COMUNE, RAZZA, `ORIENTAMENTO PRODUTTIVO`) %>%
    summarise(TOTALE_CAPI_SUM = sum(`TOTALE CAPI`, na.rm = TRUE), .groups = "drop")
  
  # Aggregate by COMUNE and ORIENTAMENTO only
  df_orientamento_summary <- df_summary %>%
    group_by(COMUNE, `ORIENTAMENTO PRODUTTIVO`) %>%
    summarise(TOTALE = sum(TOTALE_CAPI_SUM, na.rm = TRUE), .groups = "drop") %>%
    pivot_wider(
      names_from = `ORIENTAMENTO PRODUTTIVO`,
      values_from = TOTALE,
      values_fill = list(TOTALE = 0)
    ) %>%
    mutate(
      TOTALE_CAPI_SUM = rowSums(select(., c(CARNE, LATTE, MISTO)), na.rm = TRUE),
      YEAR = str_extract(basename(file_path), "\\d{4}")  # Extract year from filename
    )
  
  return(df_orientamento_summary)
}

# Apply to all files and bind into one dataframe
all_data <- file_list %>%
  map_dfr(process_file)

library(dplyr)

df <- all_data %>%
  select(
    -`COLLEZIONE FAUNISTICA - GIARDINO ZOOLOGICO`,
    -`COLLEZIONE FAUNISTICA - DIVERSA DA GIARDINO ZOOLOGICO`,
    -FAMILIARE,
    -`COLLEZIONE FAUNISTICA - RIFUGIO PER ANIMALI`
  )
animal_counts$ISTAT_COMUNE

df <- df %>%
  left_join(
    animal_counts %>% select(COMUNE, ISTAT_COMUNE) %>% distinct(),
    by = "COMUNE"
  )

write.csv(df,"bufalini_2011_2024.csv")
saveRDS(df, "bufalini_2011_2024.rds")

#########################
# SUINI
#########################


folder_path <- "C:/Users/2692812C/OneDrive - University of Glasgow/Desktop/Projects/8 Scarface/Animali/Counts"

# List all suini files
suini_files <- list.files(path = folder_path, pattern = "^suini_\\d{4}_filtered\\.xlsx$", full.names = TRUE)

# Function to process each suini file
process_suini_file <- function(file_path) {
  # Read the Excel file
  df <- read_excel(file_path)
  
  # Clean up column names (optional but useful)
  names(df) <- trimws(names(df))  # remove leading/trailing spaces
  
  # Convert NUMERO CAPI to numeric
  df <- df %>%
    mutate(`NUMERO CAPI` = as.numeric(`NUMERO CAPI`))
  
  # Summarize total capi per comune
  df_summary <- df %>%
    group_by(COMUNE) %>%
    summarise(TOTALE_CAPI_SUM = sum(`NUMERO CAPI`, na.rm = TRUE), .groups = "drop") %>%
    # Add ISTAT_COMUNE_AZIENDA using distinct mapping
    left_join(
      df %>% select(COMUNE, ISTAT_COMUNE_AZIENDA) %>% distinct(),
      by = "COMUNE"
    ) %>%
    # Add year from filename
    mutate(YEAR = str_extract(basename(file_path), "\\d{4}"))
  
  return(df_summary)
}

# Process all suini files
all_suini_data <- suini_files %>%
  map_dfr(process_suini_file)

# View the result
head(all_suini_data)
# Save the combined data
saveRDS(all_suini_data, "suini_2011_2024.rds")
write.csv(all_suini_data, "suini_2011_2024.csv", row.names = FALSE)

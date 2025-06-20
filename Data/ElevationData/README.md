# Dataset Description: Livestock Counts by Municipality and Year

## Overview

For the purpose of providing a statistical description of the geographical characteristics of the territory, Istat disseminates analyses based on territorial bases and the digital elevation model (DEM) of the main territorial units relevant to official statistics

## Structure 

- **Rows**: 895 obs
- **Columns**: 27 columns
- **Format**: `tibble` (R `tbl_df`, `data.frame`)


###Some Variable Descriptions

| Variable              | Description                                                                 |
|-----------------------|-----------------------------------------------------------------------------|
| `COD_REG`             | Numeric code of the region                                                  |
| `COD_PRO`             | Numeric code of the province                                                |
| `PRO_COM`             | Combined province-municipality code (unique ID for each comune)            |
| `NOME`                | Name of the municipality (comune)                                           |
| `SUPERFICIE (in KMQ)` | Surface area of the municipality in square kilometers                       |
| `ALT_MIN`             | Minimum elevation (meters above sea level)                                 |
| `ALT_MAX`             | Maximum elevation (meters above sea level)                                 |
| `RANGE`               | Elevation range: difference between max and min elevation                   |
| `MEDIA`               | Mean elevation (average of elevation values)                                |
| `MEDIANA`             | Median elevation                                                            |
| `STD`                 | Standard deviation of elevation values (terrain variability indicator)      |
| `com_code`            | Character version of `PRO_COM`, zero-padded to 6 digits (used for merging)  |

## Notes

- The datasets are provided given rds and csv formats.
- Metadata folder contains an R script for processing the data original and provide the below plot.
    
### Example plot

![Alt text](Rplot.png)



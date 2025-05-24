# European Air Quality Data Repository For Lombardia, Emilia Romagna, Piemonte and Veneto

This repository contains processed and raw data derived from the **European Air Quality Interpolated Data** provided by the European Environment Agency (EEA).

📅 **Published**:  NA
🛠 **Last Modified**: 05 April 2025  
🔗 **Original Source**: [EEA Datahub Item](https://www.eea.europa.eu/en/datahub/datahubitem-view/82700fbd-2953-467b-be0a-78a520c3a7ef)

## 📦 Dataset Description

The dataset provides air pollutant concentration grids across Europe using a *regression-interpolation-merging mapping* methodology. It integrates observational values from air quality monitoring stations to generate interpolated maps of key pollutants.

### 📊 Available Indicators

**For Human Health:**
- PM10 (Annual average, 90.4 percentile of daily means)
- PM2.5 (Annual average)

**The next variables are considered only for Lombardy, Piedmont and Emilia Romagna**
-------------------------------------------------------------------------------
- Ozone:
  - 93.2 percentile of maximum daily 8-hour means
  - SOMO35, SOMO10
- NO₂ (Annual average)

**For Vegetation Impact:**
- AOT40 (for vegetation and forests)
- Phytotoxic Ozone Dose (POD) for:
  - Wheat
  - Tomato
  - Potato

**Other:**
- NOx (Annual average)

## 🗂 File Structure

- `/data`  
  Contains the provided dataset in two formats:
  - CSV: Structured tabular format
  - GeoTIFF: Spatial raster format for geospatial analyses

- `/scripts`  
  - `preprocess_metadata.R`: R script for preprocessing the metadata and preparing it for further analysis or integration. The R script needs to be run locally when the data have been downloaded, and the directory need to be changed.

## 🧪 Preprocessing

To standardize and clean the metadata, an R script is provided. You can run it using:

```bash
Rscript scripts/processing_EEA_data.R


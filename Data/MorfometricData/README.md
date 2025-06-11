# Dataset Description: Municipal Terrain and Population Data – Italy (2022)

## Overview

This dataset provides **municipality-level data** for Italy for the year **2022**, including information on **population**, **land and water surface areas**, **terrain steepness (slope classes)**, and **terrain roughness**. These variables offer critical support for applications in **urban planning**, **land management**, **agriculture**, and **environmental risk assessment**.

- 📅 **Year**: 2022  
- 🛠 **Last Modified**: N/A  
- 🔗 **Sources**:  
  - ISTAT: *Statistica Sperimentale – Indici Morfometrici*  
  - OpenDataSoft: *Italy Municipality Shapefiles (Georeferenced)*

## Key Variables

### Administrative and Demographic

| Column Name    | Type   | Description                                      |
|----------------|--------|--------------------------------------------------|
| `COD_REG`      | chr    | Region code                                      |
| `COD_PROV`     | chr    | Province code                                    |
| `COD_COM`      | chr    | Municipality code                                |
| `COMUNE`       | chr    | Name of the municipality                         |
| `POP_31_12_2022` | num  | Resident population as of December 31, 2022      |

### Land and Water Surface

| Column Name      | Type   | Description                                 |
|------------------|--------|---------------------------------------------|
| `SUP_31_12_2022` | num    | Total land area (hectares)                  |
| `SUP_ACQUE`      | num    | Water surface area (hectares)               |

### Terrain Steepness (Slope Class – Quintiles)

| Column Name     | Type   | Description                                         |
|-----------------|--------|-----------------------------------------------------|
| `%_MOLTO_BASSA` | num    | Percentage of land in very low slope class          |
| `%_BASSA`       | num    | Percentage of land in low slope class               |
| `%_MEDIA`       | num    | Percentage of land in medium slope class            |
| `%_ALTA`        | num    | Percentage of land in high slope class              |
| `%_MOLTO_ALTA`  | num    | Percentage of land in very high slope class         |
| `STD_SLOPE`     | num    | Standard deviation of terrain slope                 |
| `DEF_SLOPE`     | chr    | Slope classification based on quintiles             |

### Terrain Roughness

| Column Name     | Type   | Description                                         |
|-----------------|--------|-----------------------------------------------------|
| `STD_TRI`       | num    | Standard deviation of Terrain Roughness Index (TRI) |
| `DEF_TRI`       | chr    | Roughness classification based on quintiles         |

## File Structure

- **`/data`**  
  Contains the dataset in CSV and optionally RDS formats

- **`/scripts`**  
  - R scripts for merging, preprocessing, and visualizing the morphometric and demographic data

Ensure that all data files are placed in the appropriate directory as defined in the script paths.

## Notes

- Terrain classes are defined based on quintile distribution of slope and roughness.
- Useful for geospatial analysis, natural hazard assessment, and municipal infrastructure planning.


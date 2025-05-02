# SCARFACE Data Repository

This repository supports the SCARFACE project, which focuses on evaluating carbon sequestration in agricultural systems in the Po Valley (Italy) using geostatistical learning and data science techniques. The repository is organized around multiple datasets and scripts for the analysis of animal breeding, land use, and morphometric characteristics of the territory.

## 📁 Repository Structure

- `Animals/`: Contains animal population and breeding data at the municipal level.
- `AnimalsBreedingFactoriesData/`: Contains additional data and documentation about livestock farming and breeding facilities.
- `Counts/`: Aggregated counts of animals by category or location.
- `ElevationData/`: Includes elevation models and altitude-related data.
- `MorfometricData/`: Contains morphometric indicators (e.g., slope, roughness) and geographic information from ISTAT.
- `FolderReorganized/`: Restructured contents from earlier folder arrangements.
- `AltitudePng.png`: Visual representation of altitude data.
- `Altitude_com.xlsx`: Spreadsheet with altitude values by municipality.
- `MorfometricData_com_2022.xlsx`: Morphometric indices by municipality for 2022.
- `MorfometricDataView.qmd`: Quarto document for viewing or analyzing morphometric data.

## 📌 Project Overview

This repository gathers and harmonizes data related to:

- Livestock farming intensity and distribution.
- Terrain morphology and elevation.
- Land cover and land use.
- Agricultural practices relevant to carbon sequestration.

The primary objective is to construct a spatial and temporal database to support the identification of areas in the Po Valley with either critical environmental issues or strong agricultural performance.

## 🔗 Data Sources

The data included in this repository comes from trusted institutional sources:

- **ISTAT** – Statistica Sperimentale e Indicatori Morfometrici  
  [https://www.istat.it/classificazione/principali-statistiche-geografiche-sui-comuni/](https://www.istat.it/classificazione/principali-statistiche-geografiche-sui-comuni/)
  
- **LUCAS – Land Use/Cover Area Frame Survey (Eurostat)**  
  [https://ec.europa.eu/eurostat/statistics-explained/index.php?title=LUCAS_-_Land_use_and_land_cover_survey](https://ec.europa.eu/eurostat/statistics-explained/index.php?title=LUCAS_-_Land_use_and_land_cover_survey)

- **Veterinary National Database (Vetinfo)**  
  [https://www.vetinfo.it/j6_statistiche/](https://www.vetinfo.it/j6_statistiche/)

## 🛠 How to Use the Code

This repository includes R scripts and Quarto documents for:

- Loading and cleaning data from ISTAT, Eurostat, and Vetinfo.
- Merging datasets with geographical shapefiles.
- Producing visualizations of terrain, livestock density, and municipal metrics.

Before running the scripts, ensure the following R packages are installed:

```r
install.packages(c("tidyverse", "sf", "readxl", "ggplot2", "raster"))

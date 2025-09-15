# SCARFACE Data Repository

This repository supports the SCARFACE project, which focuses on evaluating carbon sequestration in agricultural systems in the Po Valley (Italy) using geostatistical learning and data science techniques. The repository is organized around multiple datasets and scripts for the analysis of animal breeding, land use, and morphometric characteristics of the territory.

## 📁 Repository Structure

- **`Animals/`**: Contains municipal-level data on animal populations and breeding. Includes both raw and processed datasets at annual resolution.

- **`CORINE Land Cover 2018/`**: Provides 2018 land cover data as 100 m resolution raster layers.

- **`CREA SURVEY/`**: collects yearly information on agricultural activities in Italy.

- **`EEA/`**: Includes spatio-temporal data on PM10 and PM2.5 concentrations, presented as yearly averages on a 0.1° × 0.1° grid, covering the period 2011–2025.

- **`EDGAR Emissions/`**: Contains annual emissions data from the Emissions Database for Global Atmospheric Research (EDGAR) by the European Commission. Data is available on a global 0.1° × 0.1° grid and includes both total and sector-specific (e.g., agriculture, livestock) human activity emissions.

- **`ElevationData/`**: Digital elevation models and related topographic datasets.

- **`Meteorology/`**: Meteorological data sourced from ECMWF, structured on a 0.1° × 0.1° grid. (Temporal coverage to be confirmed.)

- **`LAU PO Valley Metadata/`**: Metadata for municipalities within the Po Valley.

- **`LUCAS/`**: Consolidated and restructured datasets originally from separate folders.

- **`MorfometricData/`**: Contains geographic and morphometric indicators (e.g., slope, roughness) from ISTAT. (Further organization needed.)

- **`Socio-Economic-Indicators/`**: Socio-economic statistics at the municipality level, covering the years 2014–2021.



## 🔗 Data Sources

The data included in this repository comes from trusted institutional sources:

- **ISTAT** – Statistica Sperimentale e Indicatori Morfometrici  
  [https://www.istat.it/classificazione/principali-statistiche-geografiche-sui-comuni/](https://www.istat.it/classificazione/principali-statistiche-geografiche-sui-comuni/)

- **ISTAT** - A Misura di Comune Indici Socio-Economici
 [https://www.istat.it/statistica-sperimentale/aggiornamento-degli-indicatori-del-sistema-informativo-a-misura-di-comune/]
  
- **LUCAS – Land Use/Cover Area Frame Survey (Eurostat)**  
  [https://ec.europa.eu/eurostat/statistics-explained/index.php?title=LUCAS_-_Land_use_and_land_cover_survey](https://ec.europa.eu/eurostat/statistics-explained/index.php?title=LUCAS_-_Land_use_and_land_cover_survey)

- **Veterinary National Database (Vetinfo)**  
  [https://www.vetinfo.it/j6_statistiche/](https://www.vetinfo.it/j6_statistiche/)

- **Copernicus Land Cover**
[https://land.copernicus.eu/en/products/corine-land-cover?tab=datasets]  Troppo grandi per GitHub

- **European Environmental Agency**
  [https://www.eea.europa.eu/en/datahub/datahubitem-view/82700fbd-2953-467b-be0a-78a520c3a7ef ]
  
- **European Drought Observatory**
[https://drought.emergency.copernicus.eu/]

- **EDGAR**
  [https://edgar.jrc.ec.europa.eu/dataset_ghg2024#p3]


## 🛠 How to Use the Code


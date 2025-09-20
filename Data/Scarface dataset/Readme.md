# Scarface dataset

# 📄 Scarface Project Auxiliary Datasets descriptions

The **Scarface Project** uses several auxiliary datasets, all harmonized at the ASR (Socio-Regional Area) level and observed annually (`Year`).

## 📂 Dataset Subgroups
- **Scarface_SE** – Socio-economic indicators (ISTAT)  
- **Scarface_LI** – Livestock statistics (Vetinfo)  
- **Scarface_ORO** – Territorial & morphological indicators (ISTAT)  
- **Scarface_EM** – Emission estimates (EDGAR)  
- **Scarface_WE** – Weather & climate indicators (ERA5, Copernicus)  
- **Scarface_AQ** – Air quality indicators (EEA)  

---

## ℹ️ Notes
- Common keys: **ASR** (territorial unit), **Year** (observation year).  
- Variable suffixes:  
  - `_SUM`, `_mean` → totals or averages  
  - `_BK` → Block Kriging estimate  
  - `_KV` → Kriging variance (uncertainty)  
  - `_Pred`, `_Var` → predicted values and variance  




# 📄 README – Socio-Economic Variables (Scarface_SE)

This dataset contains **socio-economic and demographic indicators** at the municipal/regional level  
(Source: [ISTAT – Main geographical statistics on municipalities](https://www.istat.it/classificazione/principali-statistiche-geografiche-sui-comuni/)).  
Observations are annual (`Year`), with territorial identifier (`ASR`).  

## 📊 Variable descriptions

- **ASR**  
  Socio-Regional Area (territorial reference unit).

- **Year**  
  Year of observation.

---

### 👥 Demography
- **SE_Pop2021_mean** – Average resident population (2021).  
- **SE_PopDens_km2_mean** – Population density (inhabitants/km²).  
- **SE_DegUrba_mean** – Degree of urbanization (ISTAT scale).  
- **SE_year_mean** – Reference year for demographic statistics.  
- **SE_natalita_mean** – Birth rate (%).  
- **SE_mortalita_mean** – Mortality rate (%).  
- **SE_migrazione_mean** – Migration balance (%).  

#### Age group distribution (% of total population)
- **SE_Age 0-3_mean**  
- **SE_Age 4-5_mean**  
- **SE_Age 6-10_mean**  
- **SE_Age 11-14_mean**  
- **SE_Age 15-17_mean**  
- **SE_Age 18-19_mean**  
- **SE_Age 20-29_mean**  
- **SE_Age 30-59_mean**  
- **SE_Age 60-64_mean**  
- **SE_Age 65-84_mean**  
- **SE_Age 85+_mean**

---

### 💶 Economic indicators
- **SE_Income_mean** – Average income (€).  
- **SE_Established Economy Index_mean** – Economic stability index.  
- **SE_Agricultural-Manufacturing Activity_mean** – Share of agriculture & manufacturing (% employees).  
- **SE_Extractive Industry_mean** – Share of extractive industry (%).  
- **SE_Manufacturing Industry_mean** – Share of manufacturing industry (%).  
- **SE_Construction_mean** – Share of construction sector (%).  
- **SE_Business Services_mean** – Share of business services (%).  
- **SE_Social Services_mean** – Share of social services (%).  
- **SE_Consumer Services_mean** – Share of consumer services (%).  
- **SE_Traditional Services_mean** – Share of traditional services (%).  

---

### 🚗 Other indicators
- **SE_Car Accident Rate_mean** – Road accident rate.  
- **SE_Codice regione agraria_mean** – ISTAT agricultural region code.  

---

## ℹ️ Notes
- Variables with suffix `_mean` represent **ASR averages** computed by the SCARFACE research Group.  
- Some observations contain **NaN** for missing years/areas.  
- Age structure and economic activity percentages are relative to the resident population or employees.

# 📄 README – Livestock Variables (Scarface_LI)

This dataset contains **livestock statistics** aggregated at the ASR (Socio-Regional Area) level.  
Source: [Vetinfo – National Veterinary Information System](https://www.vetinfo.it/j6_statistiche/).  
Observations are annual (`Year`), with territorial identifier (`ASR`).  

## 📊 Variable descriptions

- **ASR**  
  Socio-Regional Area (territorial reference unit).

- **Year**  
  Year of observation.

---

### 🐄 Livestock counts
- **LI_BUF_TOTAL_SUM** – Total number of buffalo heads registered (sum at ASR level).  
- **LI_SUINI_CAPI_SUM** – Total number of pigs registered (sum at ASR level).  

---

### 🥩🐄 Buffalo farm types (% or mean presence per ASR)
- **LI_BUF_MEAT_mean** – Average number of buffalo farms specialized in meat production.  
- **LI_BUF_MILK_mean** – Average number of buffalo farms specialized in milk production.  
- **LI_BUF_MIXED_mean** – Average number of buffalo farms with mixed (meat + milk) production.  

---

## ℹ️ Notes
- Variables with suffix `_SUM` represent **total livestock counts** in the ASR.  
- Variables with suffix `_mean` represent **average farm counts/types** at the ASR level.  
- Values are derived from official veterinary registries (Vetinfo).  


# 📄 README – Territorial & Morphological Variables (Scarface_ORO)

This dataset contains **territorial and morphological indicators** aggregated at the ASR (Socio-Regional Area) level.  
Source: ISTAT geographical statistics.  
Observations are annual (`Year`), with territorial identifier (`ASR`).  

## 📊 Variable descriptions

- **ASR**  
  Socio-Regional Area (territorial reference unit).

- **Year**  
  Year of observation.

---

### 🌍 Area & Surface
- **ORO_Area_km2_mean** – Average municipal area (km²).  
- **ORO_NUTS3_LandSurface_km2_mean** – Land surface of the NUTS3 region (km²).  
- **ORO_NUTS3_TotSurface_km2_mean** – Total surface (land + water) of the NUTS3 region (km²).  

---

### 📍 Geographic coordinates
- **ORO_Lon_centr_LAU_mean** – Average longitude of municipal centroid (LAU level).  
- **ORO_Lat_centr_LAU_mean** – Average latitude of municipal centroid (LAU level).  

---

### 🏔️ Altimetry
- **ORO_Alt_min_mean** – Average minimum altitude (m).  
- **ORO_Alt_mean_mean** – Average mean altitude (m).  
- **ORO_Alt_max_mean** – Average maximum altitude (m).  
- **ORO_Alt_stdev_mean** – Average standard deviation of altitude (m) – indicator of morphological variability.  

---

## ℹ️ Notes
- Variables with suffix `_mean` represent **average values** calculated at the ASR level.  
- NUTS3 = European classification for statistical regions (Nomenclature of Territorial Units for Statistics).  
- LAU = Local Administrative Unit (municipality level).  


# 📄 README – Emissions Variables (Scarface_EM)

This dataset contains **air pollutant emission estimates** aggregated at the ASR (Socio-Regional Area) level.  
Source: [EDGAR – Emissions Database for Global Atmospheric Research (JRC/European Commission)](https://edgar.jrc.ec.europa.eu/dataset_ghg2024#p3).  
Observations are annual (`Year`), with territorial identifier (`ASR`).  

## 📊 Variable descriptions

- **ASR**  
  Socio-Regional Area (territorial reference unit).

- **Year**  
  Year of observation.

---

### 🌫️ Emission indicators  
For each pollutant, two variables are provided:  
- `_Pred` = Predicted/estimated emissions (tons/year).  
- `_Var` = Variance/uncertainty of the estimate.  

- **EM_BC_BK_Pred** – Black Carbon (BC) emissions.  
- **EM_BC_BK_Var** – Variance of BC emissions.  

- **EM_CO_BK_Pred** – Carbon Monoxide (CO) emissions.  
- **EM_CO_BK_Var** – Variance of CO emissions.  

- **EM_NH3_BK_Pred** – Ammonia (NH₃) emissions.  
- **EM_NH3_BK_Var** – Variance of NH₃ emissions.  

- **EM_NMVOC_BK_Pred** – Non-Methane Volatile Organic Compounds (NMVOC) emissions.  
- **EM_NMVOC_BK_Var** – Variance of NMVOC emissions.  

- **EM_OC_BK_Pred** – Organic Carbon (OC) emissions.  
- **EM_OC_BK_Var** – Variance of OC emissions.  

- **EM_PM10_BK_Pred** – Particulate Matter ≤10µm (PM₁₀) emissions.  
- **EM_PM10_BK_Var** – Variance of PM₁₀ emissions.  

- **EM_PM25_BK_Pred** – Particulate Matter ≤2.5µm (PM₂.₅) emissions.  
- **EM_PM25_BK_Var** – Variance of PM₂.₅ emissions.  

---

## ℹ️ Notes
- Emission values are expressed in **tons per year**.  
- Variance values (`_Var`) provide a measure of uncertainty in the estimates.  
- Data are harmonized and downscaled from global EDGAR datasets to the ASR level.  


# 📄 README – Weather & Climate Variables (Scarface_WE)

This dataset contains **weather and climate reanalysis indicators** from ERA5, aggregated at the ASR (Socio-Regional Area) level.  
Source: [Copernicus Climate Data Store – ERA5 Reanalysis](https://cds.climate.copernicus.eu/).  
Observations are annual (`Year`), with territorial identifier (`ASR`).  

## 📊 Variable descriptions

- **ASR**  
  Socio-Regional Area (territorial reference unit).

- **Year**  
  Year of observation.

---

### 🌡️ ERA5 Variables  

Each variable is available in two forms:  
- **`*_BK`** → **Block Kriging estimate** (interpolated value, original units).  
- **`*_KV`** → **Kriging Variance** (uncertainty of the estimate, dimensionless).  

---

#### Near-surface variables
- **WE_d2m\_*** – Dew point temperature (K).  
- **WE_t2m\_*** – 2m air temperature (K).  
- **WE_u10\_*** – 10m wind, u-component (zonal, m/s).  
- **WE_v10\_*** – 10m wind, v-component (meridional, m/s).  

Metrics: `_mean`, `_std`, `_min`, `_max`.

---

#### Surface & radiation
- **WE_sf\_*** – Snowfall (m of water equivalent).  
- **WE_ssr\_*** – Surface solar radiation (J/m²).  
- **WE_str\_*** – Surface thermal radiation (J/m²).  
- **WE_sp\_*** – Surface pressure (Pa).  
- **WE_tp\_*** – Total precipitation (m).  

Metrics: `_mean`, `_std`, `_min`, `_max`.

---

#### Vegetation indices
- **WE_lai_hv\_*** – Leaf area index, high vegetation.  
- **WE_lai_lv\_*** – Leaf area index, low vegetation.  

Metrics: `_mean`, `_std`, `_min`, `_max`.

---

#### Seasonal aggregated temperatures
- **WE_Temp_Fall\_*** – Autumn average temperature (°C).  
- **WE_Temp_Winter\_*** – Winter average temperature (°C).  
- **WE_Temp_Spring\_*** – Spring average temperature (°C).  
- **WE_Temp_Summer\_*** – Summer average temperature (°C).  

Metrics: `_mean`, `_std`, `_min`, `_max`.

---

## ℹ️ Notes
- ERA5 reanalysis data are **interpolated via block kriging** and aggregated to the ASR level.  
- Units follow ERA5 conventions (K, m/s, Pa, J/m², m water equivalent, °C).  
- `_BK` = Block Kriging estimate (physical units).  
- `_KV` = Kriging Variance (uncertainty measure, unitless).  


# 📄 README – Air Quality Variables (Scarface_AQ)

This dataset contains **air quality indicators** aggregated at the ASR (Socio-Regional Area) level.  
Source: [European Environment Agency (EEA) – Air Quality Datahub](https://www.eea.europa.eu/en/datahub/datahubitem-view/82700fbd-2953-467b-be0a-78a520c3a7ef).  
Observations are annual (`Year`), with territorial identifier (`ASR`).  

## 📊 Variable descriptions

- **ASR**  
  Socio-Regional Area (territorial reference unit).

- **Year**  
  Year of observation.

---

### 🌫️ Air Quality Indicators  

Each pollutant is provided with two variables:  
- **`*_BK_Pred`** → Block Kriging estimate (annual mean concentration, µg/m³).  
- **`*_BK_Var`** → Kriging Variance (uncertainty of the estimate, unitless).  

- **AQ_PM10_BK_Pred** – Annual mean concentration of PM₁₀ (µg/m³).  
- **AQ_PM10_BK_Var** – Variance of PM₁₀ estimate.  

- **AQ_PM25_BK_Pred** – Annual mean concentration of PM₂.₅ (µg/m³).  
- **AQ_PM25_BK_Var** – Variance of PM₂.₅ estimate.  

---

## ℹ️ Notes
- PM₁₀ = Particulate Matter ≤10µm.  
- PM₂.₅ = Particulate Matter ≤2.5µm.  
- `_BK_Pred` variables are expressed in **µg/m³** (annual averages).  
- `_BK_Var` variables represent the **kriging variance**, i.e. the uncertainty of the spatial interpolation.  
- Data are derived from EEA monitoring networks and interpolated to ASR level.  


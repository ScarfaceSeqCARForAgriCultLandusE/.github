# CREA Farm-Level Dataset

This repository documents the **CREA (Italian Research Council on Agrarian Economics)** dataset, which collects yearly information on agricultural activities in Italy. The data are harmonized within the **EU Farm Accountancy Data Network (FADN)** framework and enriched with spatio-temporal weighting schemes developed by the SCARFACE group.

---

## 📊 Dataset Overview

- **Source**: CREA – Italian Research Council on Agrarian Economics  
- **Coverage**: Italy, harmonized with the EU FADN database  
- **Unit of Observation**: Farm-level data (with georeferenced information)  
- **Time span**: Annual survey waves, with rotating samples across years  

---

## 📑 Inclusion Criteria

- Farms with a **Standard Output (SO) > 8,000€**  
- Stratification by:  
  1. **Administrative regions** (Eurostat NUTS-2 level)  
  2. **Technical specialization** (e.g., crops, breeding, mixed farming)  
  3. **Economic size** (SO classes)  

---

## 🌍 Target Variable

The primary target variable is the **agricultural carbon footprint (CO₂eq emissions)**, which measures the environmental impact of agricultural activities at the farm level.

---

## 📦 Contents

The dataset includes **hundreds of variables** describing farm management and performance. Key categories:  

- **Techno-economic specialization**  
  - Number and type of animals  
  - Machinery availability  
  - Agricultural land use  
  - Economic size (production)  
  - Workers and hours worked  

- **Environmental impact**  
  - Agricultural carbon footprint (CO₂eq emissions)  

- **Agronomic practices**  
  - Fertilizer use (type and amount)  
  - Phytopharms  
  - Manure management  

---

## 🗂 Data Structure

- **Farm-level records** with georeferenced information  
- Aggregated to the **ASR (Agricultural Statistical Region)** level via weighting  
- **Balanced panel**: farms rotate across survey waves (not all farms appear every year)  

---

## ⚖️ Weighting Schemes

Two weighting systems are available:  

1. **CREA-provided weights**  
   - Based on the FADN stratified design (region, specialization, economic dimension)  
   - Subject to **legal constraints** (e.g., no sub-regional publication)  

2. **SCARFACE-developed spatio-temporal weights**  
   - Built from **ISTAT Agricultural Censuses (2010 & 2020)**  
   - Steps:  
     1. Compute ASR-level farm composition in 2010 & 2020  
     2. Linearly interpolate farm counts for 2011–2019 and 2021–2023  
     3. Assume fixed internal composition over time  
     4. Derive yearly stratum-specific weights:  
        ```
        w_dst,y = N_dst,y / n_dst,y
        ```
        where:  
        - d = ASR areas (1,…,254)  
        - s = economic size (small <100k SO, big ≥100k SO)  
        - t = specialization (breeding, crops, mixed)  
        - y = year (2011–2023)  
     5. Compute totals and means using the **Horvitz-Thompson estimator**  

---

## 🚫 Legal Notes

- CREA/FADN data are **restricted** and subject to confidentiality rules.  
- Sub-regional dissemination of raw data is **not permitted**.  
- Aggregated outputs must follow EU and CREA dissemination policies.  

---

## 📌 Citation

If you use this dataset, please cite:  

> SCARFACE Group (2025). *CREA Farm-Level Dataset Documentation*. Based on CREA (Italian Research Council on Agrarian Economics) and EU FADN harmonized data.  

---

## 📅 Last Updated

September 15th, 2025 – SCARFACE Group  


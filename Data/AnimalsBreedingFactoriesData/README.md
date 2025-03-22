# Veterinary Establishments and Activities Data

## 📊 Description

This project uses data related to veterinary establishments, activities, and operators across Italian regions.  
The dataset includes information at the region, province, and municipality level, showing the number of registered establishments, activities, and operators.

## 🗂️ Data Source

The data was manually downloaded from the official website of the Italian Ministry of Health:

🔗 [https://www.vetinfo.it/j6_statistiche/#/report-pbi/106](https://www.vetinfo.it/j6_statistiche/#/report-pbi/106)

This site presents an interactive dashboard built with Microsoft Power BI, which allows users to visualize and export data in Excel format.

> ⚠️ **Note**: The data is not available via API or direct download link, so it was retrieved manually through the website interface.

## 🗃️ Data Structure

The tables contain the following main columns:

- `REGIONE`: Name of the region
- `PROVINCIA`: Name of the province
- `COMUNE`: Name of the municipality (if available)
- `NUMERO STABILIMENTI`: Total number of registered establishments
- `NUMERO ATTIVITÀ`: Number of veterinary activities
- `NUMERO OPERATORI`: Number of involved operators

## ⚙️ Processing

The data has been filtered to include only the following regions:

- EMILIA ROMAGNA  
- VENETO  
- LOMBARDIA  
- PIEMONTE

Each Excel file in the `Animali/` folder was automatically processed using an R script.

## 📁 Folder Structure



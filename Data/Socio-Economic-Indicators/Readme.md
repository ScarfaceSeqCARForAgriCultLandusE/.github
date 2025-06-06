# 📊 README – Local Indicators from *A misura di Comune*  
**Update: June 2025**

This dataset provides a comprehensive collection of **statistical indicators** at the **municipal, provincial, and regional** levels in Italy. It is part of the *A misura di Comune* system, which integrates both traditional and experimental data sources to support the planning, programming, and management activities of local authorities. The years consider range from 2014 up to 2021.
Official website [ISTAT](https://www.istat.it/statistica-sperimentale/aggiornamento-degli-indicatori-del-sistema-informativo-a-misura-di-comune/)


---

## 📁 Dataset Structure

Each row represents a unique municipality (`Codice comune Istat`) in a specific year.

### 🗺️ Geographical and Administrative Variables

| Variable Name             | Description |
|--------------------------|-------------|
| `Geographical Division`  | Broad geographical area (e.g., North, South, Islands) |
| `Region Code`            | Numeric code identifying the region |
| `Region Name`            | Full name of the region |
| `Province`               | Name of the province |
| `Provincial Capital`     | Indicates if the municipality is a provincial capital |
| `Municipality Name`      | Full name of the municipality |
| `Codice comune Istat`    | Unique identifier for each municipality (ISTAT code) |
| `year`                   | Year of observation |

### 🎓 Education

| Variable Name                            | Description |
|------------------------------------------|-------------|
| `Males incidence tertiary education`     | Percentage of males with tertiary education |
| `Females incidence tertiary education`   | Percentage of females with tertiary education |

### 👶👵 Demographic Age Groups

| Variable Name    | Description |
|------------------|-------------|
| `Age 0-3`        | Population aged 0–3 |
| `Age 4-5`        | Population aged 4–5 |
| `Age 6-10`       | Population aged 6–10 |
| `Age 11-14`      | Population aged 11–14 |
| `Age 15-17`      | Population aged 15–17 |
| `Age 18-19`      | Population aged 18–19 |
| `Age 20-29`      | Population aged 20–29 |
| `Age 30-59`      | Population aged 30–59 |
| `Age 60-64`      | Population aged 60–64 |
| `Age 65-84`      | Population aged 65–84 |
| `Age 85+`        | Population aged 85 and older |

### 💶 Economic Indicators

| Variable Name                     | Description |
|----------------------------------|-------------|
| `Income`                         | Average or median income (units and methodology may vary) |
| `Established Economy Index`      | Composite index representing economic development or stability |
| `Agricultural-Manufacturing Activity` | Share of economic activity in agriculture and manufacturing |
| `Extractive Industry`            | Economic activity related to mining or resource extraction |
| `Manufacturing Industry`         | Share of manufacturing industry activity |
| `Construction`                   | Share of economic activity from construction sector |
| `Business Services`              | Includes finance, consulting, IT, etc. |
| `Social Services`                | Education, health care, and other public services |
| `Consumer Services`              | Retail, hospitality, and other consumer-facing industries |
| `Traditional Services`           | Cultural, recreational, or legacy service sectors |

### 💸 Social Indicators

| Variable Name         | Description |
|-----------------------|-------------|
| `Social Spending`     | Social welfare expenditure per capita or in relation to municipal income |

### 🚗 Public Safety

| Variable Name              | Description |
|----------------------------|-------------|
| `Car Accident Rate`        | Number of car accidents per capita or per vehicle |
| `Road Accident Death Rate` | Number of fatalities per 100,000 inhabitants (or per accident) |

---

## 📌 Notes

- **Data Source**: See official documentation or data provider's portal for precise definitions, collection methods, and update frequency.
- **Data Types**: Most variables are numeric, but some categorical (e.g., region names).
---




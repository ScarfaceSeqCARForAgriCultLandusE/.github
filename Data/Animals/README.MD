# Dataset Description: Livestock Counts by Municipality and Year

## Overview

This dataset contains **livestock population data** for Italian municipalities across multiple years. Each row represents the total number of livestock heads recorded in a specific municipality (`COMUNE`) for a given year. The dataset includes over **39,000 entries** 4, for "pigs" and  **45,555 rows** for buffaloes, from 2011-2024, structured with the following variables:

## Structure Pigs

- **Rows**: 39,282  
- **Columns**: 4  
- **Format**: `tibble` (R `tbl_df`, `data.frame`)

## Variables pigs

| Column Name            | Type   | Description                                                                 |
|------------------------|--------|-----------------------------------------------------------------------------|
| `COMUNE`               | chr    | Name of the municipality (e.g., "ABANO TERME", "ABBIATEGRASSO")            |
| `TOTALE_CAPI_SUM`      | num    | Total number of livestock heads reported for that municipality and year    |
| `ISTAT_COMUNE_AZIENDA` | chr    | ISTAT code identifying the municipality-farm unit (possibly redundant key) |
| `YEAR`                 | chr    | Year of data collection (e.g., "2011")                                     |

## Structure Buffoles

- **Rows**: 45,555  
- **Columns**: 7  
- **Format**: `tbl_df` / `data.frame`

## Variables Buffoloes

| Column Name         | Type   | Description                                                                 |
|---------------------|--------|-----------------------------------------------------------------------------|
| `COMUNE`            | chr    | Name of the municipality (e.g., "ABANO TERME", "ABBIATEGRASSO")            |
| `CARNE`             | num    | Number of livestock raised for meat production                             |
| `LATTE`             | num    | Number of livestock raised for milk production                             |
| `MISTO`             | num    | Number of livestock raised for mixed production (meat and milk)            |
| `TOTALE_CAPI_SUM`   | num    | Total number of livestock heads (`CARNE` + `LATTE` + `MISTO`)              |
| `YEAR`              | chr    | Year of observation (e.g., "2011")                                         |
| `ISTAT_COMUNE`      | chr    | ISTAT code identifying the municipality                                    |


## Notes

- The datasets are provided given rds and csv formats.
- The additional lengths in rows is due to the presence of some more municipalities.


# Dataset Description: Livestock Counts by Municipality and Year

## Overview

This dataset contains **livestock population data** for Italian municipalities across multiple years. Each row represents the total number of livestock heads recorded in a specific municipality (`COMUNE`) for a given year. The dataset includes over **39,000 entries**, for "pigs" and buffaloes, from 2011-2024, structured with the following variables:

## Structure

- **Rows**: 39,282  
- **Columns**: 4  
- **Format**: `tibble` (R `tbl_df`, `data.frame`)

## Variables

| Column Name            | Type   | Description                                                                 |
|------------------------|--------|-----------------------------------------------------------------------------|
| `COMUNE`               | chr    | Name of the municipality (e.g., "ABANO TERME", "ABBIATEGRASSO")            |
| `TOTALE_CAPI_SUM`      | num    | Total number of livestock heads reported for that municipality and year    |
| `ISTAT_COMUNE_AZIENDA` | chr    | ISTAT code identifying the municipality-farm unit (possibly redundant key) |
| `YEAR`                 | chr    | Year of data collection (e.g., "2011")                                     |

## Notes

- The datasets are provided given rds and csv formats.
- The `YEAR` field is in character format, which may require conversion to numeric or date format for time-series analysis.


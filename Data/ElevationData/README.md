
## **Data Sources**  
The datasets used in this project are sourced from:  
- **ISTAT**: [https://www.istat.it/classificazione/principali-statistiche-geografiche-sui-comuni/)  


### Variable Descriptions

| Variable              | Description                                                                 |
|-----------------------|-----------------------------------------------------------------------------|
| `COD_REG`             | Numeric code of the region                                                  |
| `COD_PRO`             | Numeric code of the province                                                |
| `PRO_COM`             | Combined province-municipality code (unique ID for each comune)            |
| `NOME`                | Name of the municipality (comune)                                           |
| `SUPERFICIE (in KMQ)` | Surface area of the municipality in square kilometers                       |
| `ALT_MIN`             | Minimum elevation (meters above sea level)                                 |
| `ALT_MAX`             | Maximum elevation (meters above sea level)                                 |
| `RANGE`               | Elevation range: difference between max and min elevation                   |
| `MEDIA`               | Mean elevation (average of elevation values)                                |
| `MEDIANA`             | Median elevation                                                            |
| `STD`                 | Standard deviation of elevation values (terrain variability indicator)      |
| `com_code`            | Character version of `PRO_COM`, zero-padded to 6 digits (used for merging)  |


![Alt text](AltitudePng.png)



# Country-Region-City MSSQL ready-to-use scripts

## Description
This is an adaptation from MySQL to MSSQL.
Original scripts:
https://github.com/prograhammer/countries-regions-cities 

## Installation
- Extract Country-Region-City MSSQL.7z with 7zip
- Open Visual Studio SQL Server Object Explorer or Microsoft SQL Server Management Studio
- Execute the scripts in the order that they appear (cities insert will take a few minutes)

## Data Structure

### Countries table

- 230 records

| Column        | Type                                         | Description                      |
| ------------- |:---------------------------------------------| :--------------------------------|
| id            | SMALLINT(5) UNSIGNED NOT NULL AUTO_INCREMENT | Primary Key for a Country        |
| name          | VARCHAR(255) NOT NULL                        | Country name                     |
| code          | VARCHAR(10) NOT NULL                         | Country abbreviation             |

### Regions table (regions/provinces/states)

- 3,888 records

| Column        | Type                                         | Description                            |
| ------------- |:---------------------------------------------| :--------------------------------------|
| id            | INT(11) UNSIGNED NOT NULL AUTO_INCREMENT     | Primary Key for a Region               |
| name          | VARCHAR(255) NOT NULL                        | Region name                            |
| code          | VARCHAR(10) NOT NULL                         | For USA: State/Territory abbreviation  |
| country_id    | SMALLINT(5) UNSIGNED NOT NULL                | Foreign key to Countries table         |

### Cities table

- 2,790,951 records

| Column        | Type                                         | Description                                   |
| ------------- |:---------------------------------------------| :---------------------------------------------|
| id            | INT(11) UNSIGNED NOT NULL AUTO_INCREMENT     | Primary Key for a City                        |
| name          | VARCHAR(255) NOT NULL                        | City name                                     |
| region_id     | INT(11) UNSIGNED NOT NULL                    | Foreign key to Regions table (States for USA) |
| country_id    | SMALLINT(5) UNSIGNED NOT NULL                | Foreign key to Countries table                |
| latitude      | DECIMAL(10,8) NOT NULL                       | City Latitude                                 |
| longitude     | DECIMAL(11,8) NOT NULL                       | City Longitude                                |

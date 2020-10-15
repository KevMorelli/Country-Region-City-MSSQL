# Country-Region-City MSSQL ready-to-use scripts

## Description
This is an adaptation from MySQL to MSSQL.
Original scripts:
https://github.com/prograhammer/countries-regions-cities 

## Installation
- Open Visual Studio SQL Server Object Explorer or Microsoft SQL Server Management Studio
- Create a database with the name you want and select it
- Execute the scripts in the order that they appear (cities insert will take a few minutes)

## Data Structure

### Countries table

- 230 records

| Column        | Type                                         | Description                      |
| ------------- |:---------------------------------------------| :--------------------------------|
| Id            | SMALLINT(5) UNSIGNED NOT NULL AUTO_INCREMENT | Primary Key for a Country        |
| Name          | VARCHAR(255) NOT NULL                        | Country name                     |
| Code          | VARCHAR(2) NOT NULL                          | Country abbreviation/ISO code             |
| Language      | VARCHAR(3) NOT NULL                          | Language code                    |

### Regions table (regions/provinces/states)

- 3,884 records

| Column        | Type                                         | Description                            |
| ------------- |:---------------------------------------------| :--------------------------------------|
| Id            | INT(11) UNSIGNED NOT NULL AUTO_INCREMENT     | Primary Key for a Region               |
| Name          | VARCHAR(255) NOT NULL                        | Region name                            |
| CountryId     | SMALLINT(5) UNSIGNED NOT NULL                | Foreign key to Countries table         |

### Cities table

- 2,778,165 records

| Column        | Type                                         | Description                                   |
| ------------- |:---------------------------------------------| :---------------------------------------------|
| Id            | INT(11) UNSIGNED NOT NULL AUTO_INCREMENT     | Primary Key for a City                        |
| Name          | VARCHAR(255) NOT NULL                        | City name                                     |
| RegionId      | INT(11) UNSIGNED NOT NULL                    | Foreign key to Regions table                  |

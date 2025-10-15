/* 
---------------------------------------------------------
 Script Purpose:
 This script creates a new database named 'Datawarehouse' 
 and defines three schemas — Bronze, Silver, and Gold — 
 following the Data Lake architecture convention.

 Bronze: Used for raw or unprocessed data (ingested directly from source systems)
 Silver: Used for cleaned, transformed, and validated data
 Gold: Used for curated, aggregated, or analytics-ready data

---------------------------------------------------------
 Warnings / Notes:
 1. Ensure you have sufficient privileges to create a database and schemas.
 2. Running this script will create a new database named 'Datawarehouse'. 
    If a database with the same name already exists, the script will fail 
    unless dropped manually.
 3. Always verify the target environment before execution 
    (e.g., do not run in production accidentally).
 4. The GO command is used as a batch separator and should not be confused with SQL syntax.
---------------------------------------------------------
*/

-- Switch to the 'master' database before creating the new one
USE master;
GO

-- Create a new database for the Data Warehouse
CREATE DATABASE Datawarehouse;
GO

-- Switch context to the newly created database
USE Datawarehouse;
GO

-- Create schema for raw data storage
CREATE SCHEMA Bronze;
GO

-- Create schema for cleaned and transformed data
CREATE SCHEMA Silver;
GO

-- Create schema for curated and analytics-ready data
CREATE SCHEMA Gold;
GO

/* 
 End of Script
---------------------------------------------------------
 Purpose: Datawarehouse schema initialization completed.
---------------------------------------------------------
*/

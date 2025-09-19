/*CREATE DATA AND SCHEMAS
--------------------------------------------------------------------------------------
Purpose of script: 
  This script creates a new database named 'DataWarehouse' after checking if it exists. If the database already exits, it will be
  dropped and recreated. Additionally, the script sets up three schemas within the database: 'bronze', 'silver', and 'gold'. 
WARNING:
  Running the script will drop the enitre 'DataWarehouse' database if it exists. All data in the database will be permanently 
deleted. Proceed with caution and ensure you have proper backups before running script. */


USE master; 
GO

IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse') 
BEGIN 
	ALTER DATABASE Datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE; 
	DROP DATABASE DataWarehouse;
END; 
GO 

CREATE DATABASE DataWarehouse; 

USE DataWareHouse;

CREATE SCHEMA bronze; 
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO


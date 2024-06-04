-- *********************************************************************************************************************
-- Output Data to CSV File
-- This script outputs the following tables to csv files :
-- 1. mp_data_1day
-- 2. mp_data_2day
-- 3. mp_data_3day
-- *********************************************************************************************************************


-- ******************************************************
-- 1: Output mp_data_1day
-- ******************************************************
INSERT OVERWRITE DIRECTORY 'wasb:///project/output/mp_data_1day' 
ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' 
SELECT * FROM mp_data_1day;


-- ******************************************************
-- 2: Output mp_data_2day
-- ******************************************************
INSERT OVERWRITE DIRECTORY 'wasb:///project/output/mp_data_2day' 
ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' 
SELECT * FROM mp_data_2day;


-- ******************************************************
-- 3: Output mp_data_3day
-- ******************************************************
INSERT OVERWRITE DIRECTORY 'wasb:///project/output/mp_data_3day' 
ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' 
SELECT * FROM mp_data_3day;
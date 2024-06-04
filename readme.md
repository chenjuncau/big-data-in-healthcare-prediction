# Project Title : Mortality and Death Time predictions on ICU data

## Overview
The goal of the project is to predict mortality and death time in the ICU stay. 
A presentation video is also available at [YouTube](https://youtu.be/p9tSuyqjmdY).

The following are showing how to run in the step by step. 


### setup the database and Data extraction.
The database has been done on a local Postgres MIMIC-III database 
(see this [Official Repo](https://github.com/MIT-LCP/mimic-code/tree/master/buildmimic/postgres) for setting up a local Postgres MIMIC-III database). 
Code is following:
postgres_add_comments.sql
postgres_add_constraints.sql
postgres_add_indexes.sql
postgres_checks.sql
postgres_create_tables.sql
postgres_create_tables_pg10.sql
postgres_load_data_7zip.sql
postgres_load_data_gz.sql


The SQL scripts shown in the table. Note that reference has been made to the SQL queries 
provided in this [Repo](https://github.com/alistairewj/mortality-prediction/tree/master/queries) when constructing relevant features.
mp_bg.sql
mp_cohort.sql
mp_data.sql
mp_gcs.sql
mp_hourly_cohort.sql
mp_lab.sql
mp_uo.sql
mp_vital.sql
mp_data_1day.sql
mp_data_2day.sql
mp_data_3day.sql

We also create it in the local Hive system to product all the tables and files.
load_data.hql
mp_bg.hql
mp_cohort.hql
mp_data.hql
mp_gcs.hql
mp_hourly_cohort.hql
mp_lab.hql
mp_uo.hql
mp_vital.hql
mp_data_1day.hql
mp_data_2day.hql
mp_data_3day.hql
output_data.hql

The following dataset will be producted from above the file. we will use these three files to run the model comparison and prediction.
mp_data_1day.csv
mp_data_2day.csv
mp_data_3day.csv

### Model comparison and model predition using Python

#### In Phase 1, a binary classifier has been trained and evaluated.
Phase1_model_XGBoost.ipynb

#### In Phase 2, a multiclass classifier has been trained and evaluated. 
Phase2_model_XGBoost.ipynb


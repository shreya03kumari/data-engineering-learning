# GCP Batch Data Pipeline 🚀

## Overview

This project demonstrates an end-to-end batch data engineering pipeline using Google Cloud Platform.

The pipeline ingests customer data from CSV files, processes the data using Apache Beam/Dataflow concepts, and prepares analytical datasets for BigQuery.


## Architecture
CSV File
|
↓
Cloud Storage
|
↓
Dataflow (Apache Beam)
|
↓
BigQuery
|
↓
SQL Analytics



## Technologies Used

- Python
- Apache Beam
- Google Cloud Dataflow
- Google Cloud Storage
- BigQuery
- SQL


## Pipeline Steps

### 1. Data Ingestion

Customer CSV data is uploaded to Cloud Storage.


### 2. Data Processing

Apache Beam pipeline:

- Reads incoming CSV records
- Cleans and transforms data
- Converts records into structured format


### 3. Data Warehouse

Processed data is stored in BigQuery tables for analytics.


### 4. Analytics

SQL queries provide:

- Total revenue analysis
- Country-wise revenue
- Customer ranking
- Average spending analysis


## Project Structure
gcp-batch-pipeline

├── sample_data
│ └── customers.csv

├── dataflow
│ └── pipeline.py

├── sql
│ └── analysis_queries.sql

└── README.md



## Future Enhancements

- Add Cloud Storage integration
- Deploy pipeline on Google Cloud Dataflow
- Add BigQuery partitioning and clustering
- Add data quality checks
- Add CI/CD deployment pipeline

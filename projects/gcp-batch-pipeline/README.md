# GCP Batch Data Pipeline 🚀

## Overview

This project demonstrates a batch data processing pipeline using Google Cloud Platform.

The pipeline ingests CSV data, processes it using Dataflow, and loads the transformed data into BigQuery.

## Architecture

CSV File
↓
Google Cloud Storage
↓
Dataflow (Apache Beam)
↓
BigQuery
↓
SQL Analytics


## Technologies Used

- Google Cloud Storage
- Apache Beam
- Dataflow
- BigQuery
- Python
- SQL


## Pipeline Flow

1. Upload CSV files to Cloud Storage
2. Trigger Dataflow processing job
3. Transform and clean data
4. Load processed data into BigQuery
5. Run analytical SQL queries


## Future Improvements

- Add data validation
- Add error handling
- Add monitoring
- Automate deployment using CI/CD

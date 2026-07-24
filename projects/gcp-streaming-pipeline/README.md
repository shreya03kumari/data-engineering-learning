# GCP Real-Time Streaming Pipeline 🚀

## Overview

This project demonstrates a real-time data streaming pipeline using Google Cloud Platform.

The pipeline receives event data through Pub/Sub, processes events using Dataflow streaming concepts, and stores processed data in BigQuery for analytics.


## Architecture
Event Producer
|
↓
Google Cloud Pub/Sub
|
↓
Dataflow Streaming Pipeline
|
↓
BigQuery
|
↓
Analytics Dashboard



## Technologies Used

- Python
- Apache Beam
- Google Cloud Pub/Sub
- Google Cloud Dataflow
- BigQuery
- SQL


## Pipeline Flow

1. Application generates events
2. Events are published to Pub/Sub
3. Dataflow consumes streaming messages
4. Data is transformed
5. Results are stored in BigQuery


## Future Enhancements

- Add windowing
- Add watermark handling
- Add late data processing
- Add monitoring

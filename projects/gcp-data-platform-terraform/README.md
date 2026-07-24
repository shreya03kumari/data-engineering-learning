# GCP Data Platform Infrastructure using Terraform 🚀

## Overview

This project demonstrates Infrastructure as Code (IaC) practices for deploying a data engineering platform on Google Cloud Platform.

Terraform is used to provision cloud resources, while GitHub Actions automates validation and deployment workflows.

## Architecture
Developer
|
↓
GitHub Repository
|
↓
GitHub Actions
|
↓
Terraform
|
↓
Google Cloud Platform
|
├── Cloud Storage
├── BigQuery Dataset
├── Pub/Sub Topic
└── IAM Roles


## Technologies Used

- Terraform
- Google Cloud Platform
- GitHub Actions
- BigQuery
- Cloud Storage
- Pub/Sub
- CI/CD

## Infrastructure Components

Terraform will create:

- Data storage layer
- Analytics warehouse
- Streaming messaging layer
- Required permissions

## CI/CD Workflow

1. Developer pushes code
2. GitHub Actions triggers
3. Terraform validates configuration
4. Infrastructure changes are planned
5. Deployment is automated

## Skills Demonstrated

- Infrastructure as Code
- Cloud automation
- DevOps practices
- Data platform deployment
- CI/CD workflows

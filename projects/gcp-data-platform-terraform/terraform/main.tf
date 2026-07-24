terraform {

  required_providers {

    google = {

      source  = "hashicorp/google"
      version = "~> 5.0"

    }

  }

}


provider "google" {

  project = var.project_id
  region  = var.region

}



# Cloud Storage Bucket

resource "google_storage_bucket" "data_bucket" {

  name = "${var.project_id}-data-bucket"

  location = var.region

}



# BigQuery Dataset

resource "google_bigquery_dataset" "analytics_dataset" {

  dataset_id = "analytics"

  location = var.region

}



# Pub/Sub Topic

resource "google_pubsub_topic" "events_topic" {

  name = "data-events"

}

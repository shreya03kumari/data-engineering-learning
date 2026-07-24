output "storage_bucket_name" {

  description = "Created Cloud Storage bucket"

  value = google_storage_bucket.data_bucket.name

}


output "bigquery_dataset" {

  description = "Created BigQuery dataset"

  value = google_bigquery_dataset.analytics_dataset.dataset_id

}


output "pubsub_topic" {

  description = "Created Pub/Sub topic"

  value = google_pubsub_topic.events_topic.name

}

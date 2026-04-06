output "gcs_bucket_name" {
  description = "Name of the GCS bucket hosting the React app"
  value       = google_storage_bucket.app.name
}

output "service_account_email" {
  description = "Email of the GitHub Actions service account"
  value       = google_service_account.github_actions.email
}

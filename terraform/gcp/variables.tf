variable "gcp_project_id" {
  description = "GCP project ID"
  type        = string
  default     = "react-cicd-demo-492510"
}

variable "gcp_region" {
  description = "GCP region for resources"
  type        = string
  default     = "US"
}

variable "gcs_bucket_name" {
  description = "GCS bucket name for hosting the React app"
  type        = string
  default     = "react-cicd-demo-trivikram-gcp"
}

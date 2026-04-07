variable "region" {
  description = "AWS region for all resources"
  type        = string
  default     = "ap-south-1"
}

variable "project_name" {
  description = "Project name used for tagging resources"
  type        = string
  default     = "react-cicd-demo"
}

variable "s3_bucket_prod" {
  description = "S3 bucket name for the production environment"
  type        = string
  default     = "react-cicd-demo-trivikram"
}

variable "s3_bucket_test" {
  description = "S3 bucket name for the test environment"
  type        = string
  default     = "react-cicd-demo-trivikram-test"
}

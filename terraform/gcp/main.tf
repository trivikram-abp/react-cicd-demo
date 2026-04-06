terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
  required_version = ">= 1.5.0"
}

provider "google" {
  project = var.gcp_project_id
  region  = var.gcp_region
}

# ──────────────────────────────────────────────
# GCS — Static hosting bucket
# ──────────────────────────────────────────────

resource "google_storage_bucket" "app" {
  name          = var.gcs_bucket_name
  location      = var.gcp_region
  force_destroy = false

  uniform_bucket_level_access = true

  website {
    main_page_suffix = "index.html"
    not_found_page   = "index.html"
  }

  cors {
    origin          = ["*"]
    method          = ["GET", "HEAD"]
    response_header = ["Content-Type"]
    max_age_seconds = 3600
  }

  labels = {
    project     = "react-cicd-demo"
    environment = "test"
    managed-by  = "terraform"
  }
}

# ──────────────────────────────────────────────
# Service Account — GitHub Actions CI/CD
# ──────────────────────────────────────────────

resource "google_service_account" "github_actions" {
  account_id   = "github-actions-cicd"
  display_name = "GitHub Actions CI/CD"
  description  = "Service account used by GitHub Actions to deploy to GCS"
  project      = var.gcp_project_id
}

# ──────────────────────────────────────────────
# IAM — Grant Storage Admin to service account
# ──────────────────────────────────────────────

resource "google_project_iam_member" "storage_admin" {
  project = var.gcp_project_id
  role    = "roles/storage.admin"
  member  = "serviceAccount:${google_service_account.github_actions.email}"
}

variable "google_credentials" {
  type        = string
  description = "Value of the Google Cloud service account token"
  sensitive   = true
}

variable "resource_zone_location" {
  type        = string
  description = "Google Cloud zone for the resources"
  default     = "asia-south"
}

variable "gc_project" {
  type        = string
  description = "Google Cloud project name"
  default     = "mycollection-in"
}

variable "provider_region" {
  type        = string
  description = "Google Cloud provider region"
  default     = "us-central1"
}

variable "remote_state_bucket" {
  type = object({
    bucket_name = string
    prefix      = string
  })
  description = "Remote state bucket object"
  default = {
    bucket_name = "terraform-gcs-infra"
    prefix      = "terraform/state"
  }
}
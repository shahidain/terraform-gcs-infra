variable "google_credentials" {
  type        = string
  description = "value of the Google Cloud service account token"
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
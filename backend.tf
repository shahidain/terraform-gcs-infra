terraform {
  backend "gcs" {
    bucket = "terraform-gcs-infra"
    credentials = var.google_credentials
  }
}
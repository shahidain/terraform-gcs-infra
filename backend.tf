terraform {
  backend "gcs" {
    bucket = "terraform-gcs-infra"
  }
}
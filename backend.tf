terraform {
  backend "gcs" {
    bucket = "terraform-gcs-infra"
    prefix = "terraform/state"
  }
}
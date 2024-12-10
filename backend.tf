terraform {
  backend "gcs" {
    bucket = "terraform-gcs-infra"
    prefix = "terraform/state"
    credentials = "service-account.json"
  }
}
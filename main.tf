provider "google" {
  credentials = var.google_credentials
  project     = var.gc_project
  region      = var.provider_region
  zone        = "${var.provider_region}-c"
}

resource "google_storage_bucket" "tf_state_bucket_gcs" {
  name                     = "tf-run-state-bucket-gcs"
  location                 = "${var.resource_zone_location}1"
  force_destroy            = true
  project                  = var.gc_project
  public_access_prevention = "enforced"
  lifecycle_rule {
    condition {
      age = 30
    }
    action {
      type = "Delete"
    }
  }
}

resource "google_storage_bucket" "temp_tf_state_bucket_gcs" {
  name                     = "temp-${data.terraform_remote_state.bucket_state.outputs.tf_state_bucket_gcs.name}"
  location                 = data.terraform_remote_state.bucket_state.outputs.tf_state_bucket_gcs.location
  force_destroy            = true
  project                  = data.terraform_remote_state.bucket_state.outputs.tf_state_bucket_gcs.project
  public_access_prevention = "enforced"
  lifecycle_rule {
    condition {
      age = 30
    }
    action {
      type = "Delete"
    }
  }
}
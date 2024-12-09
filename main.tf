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
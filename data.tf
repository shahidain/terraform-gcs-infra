data "terraform_remote_state" "bucket_state" {
  backend = "gcs"
  config = {
    bucket = var.remote_state_bucket.bucket_name
    prefix = var.remote_state_bucket.prefix
  }
}
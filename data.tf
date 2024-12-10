data "terraform_remote_state" "bucket_state" {
  backend = "gcs"
  config = {
    bucket = "terraform-gcs-infra"
    prefix = "terraform/state"
  }
}
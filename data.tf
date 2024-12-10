data "terraform_remote_state" "bucket_state" {
  backend = "s3"
  config = {
    bucket = "terraform-gcs-infra"
    prefix = "terraform/state"
  }
}
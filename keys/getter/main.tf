data "terraform_remote_state" "keys" {
  backend = "s3"

  config {
    region = "${var.region}"
    bucket = "${var.s3_bucket}"
    key    = "keys/terraform.tfstate"
  }
}

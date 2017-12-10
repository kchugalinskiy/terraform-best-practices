data "terraform_remote_state" "consul" {
  backend = "s3"

  config {
    region = "${var.region}"
    bucket = "${var.s3_bucket}"
    key    = "consul/terraform.tfstate"
  }
}

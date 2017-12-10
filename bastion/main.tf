#########################################################################################
# getter
module "network-getter" {
  source  = "../network/getter"
  country = "${var.country}"
  stage   = "${var.stage}"
}

#########################################################################################
# implementation
module "implementation" {
  source = "bitbucket.com/somecorp/bastion"

  name  = "${var.country}"
  stage = "${var.stage}"
  tags  = "${var.tags}"

  region           = "${var.region}"
  vpc_id           = "${module.network-getter.vpc_id}"
  public_subnets   = "${module.network-getter.public_subnet_ids}"
  s3_bucket_name   = "${var.keys_s3_bucket}"
  s3_bucket_prefix = "${var.keys_s3_prefix}"
}

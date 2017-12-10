#########################################################################################
# getter
module "network-getter" {
  source  = "../network/getter"
  country = "${var.country}"
  stage   = "${var.stage}"
}

#########################################################################################
# implementation
data "aws_vpc" "main" {
  id = "${module.network-getter.vpc_id}"
}

module "consul" {
  source                      = "hashicorp/consul/aws"
  cluster_name                = "${var.country}-${var.stage}-consul"
  cluster_tag_value           = "${var.country}-${var.stage}"
  vpc_id                      = "${module.network-getter.vpc_id}"
  subnet_ids                  = "${module.network-getter.private_subnet_ids}"
  allowed_ssh_cidr_blocks     = ["${data.aws_vpc.main.cidr_block}"]
  allowed_inbound_cidr_blocks = ["${concat(list(data.aws_vpc.main.cidr_block), data.aws_vpc.additional.*.cidr_block)}"]
}

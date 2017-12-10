#########################################################################################
# implementation
module "implementation" {
  source = "hashicorp/vpc/aws"

  cidr           = "${var.vpc_cidr}"
  subnet_bitsize = 4
  subnets_limit  = 3
  peering_vpc_id = "${var.old_vpc_id}"
  tags           = "${merge(map("Name", format("%s-%s", var.country, var.stage)), var.tags)}"
}

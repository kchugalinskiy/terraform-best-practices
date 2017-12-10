module "network-getter" {
  source        = "../../tf-network/getter"
  subnets_limit = 3

  tags = {
    Name = "${var.country}-${var.stage}"
  }
}

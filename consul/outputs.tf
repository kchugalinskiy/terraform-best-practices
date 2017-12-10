output "consul_join" {
  value = "${var.country}-${var.stage}"
}

output "consul_datacenter" {
  value = "${var.region}"
}

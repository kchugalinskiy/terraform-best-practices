output "vpc_id" {
  value = "${module.network-getter.vpc_id}"
}

output "public_subnet_ids" {
  value = "${module.network-getter.public_subnet_ids}"
}

output "private_subnet_ids" {
  value = "${module.network-getter.private_subnet_ids}"
}

output "db_subnet_ids" {
  value = "${module.network-getter.db_subnet_ids}"
}

output "elasticache_subnet_ids" {
  value = "${module.network-getter.elasticache_subnet_ids}"
}

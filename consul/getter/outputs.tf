output "consul_join" {
  value = "${data.terraform_remote_state.consul.consul_join}"
}

output "consul_datacenter" {
  value = "${data.terraform_remote_state.consul.consul_datacenter}"
}

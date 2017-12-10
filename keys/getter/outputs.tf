output "key_name" {
  value = "${data.terraform_remote_state.consul.consul_datacenter.key_name}"
}

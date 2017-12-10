#########################################################################################
# implementation
resource "aws_key_pair" "deployer" {
  key_name   = "${var.country}-${var.stage}-key"
  public_key = "${file(format("%s/id_rsa.%s.pub", path.module, var.stage))}"
}

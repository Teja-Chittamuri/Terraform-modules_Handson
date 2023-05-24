module "key_pair" {
  source = "terraform-aws-modules/key-pair/aws"
  version = "~> 2.0"

  key_name           = var.keypair_name
  public_key   = file("${path.module}/id_rsa.pub")
  create_private_key = false
}
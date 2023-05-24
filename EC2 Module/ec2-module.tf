module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = " ~> 5.0"

  name = "${local.name}-${var.instance_name}"
  ami = data.aws_ami.ubuntu_ami.id
  availability_zone = var.az_zone
  instance_type          = var.instance_type
  key_name               = var.keypair_name
  monitoring             = true
  vpc_security_group_ids = [ aws_security_group.appinsights-sg.id]

  tags = local.commontags
}
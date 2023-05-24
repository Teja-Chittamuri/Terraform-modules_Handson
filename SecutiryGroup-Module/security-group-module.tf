
/*module "main_sg" {
  source = "terraform-aws-modules/security-group/aws"

  name        = "${local.name}-${var.sg_name}"
  description = "Security group for APPINSIGHTS SERVICE"
  vpc_id      = data.aws_vpc.default.id

  ingress_cidr_blocks = var.ingress_cidr_blocks
  ingress_rules       = var.ingress_rules
}
*/

module "mytest_sg" {
  source = "terraform-aws-modules/security-group/aws"

  name        = "${local.name}-${var.sg_name}"
  description = "Security group for user-service with custom ports open within VPC, and PostgreSQL publicly open"
  vpc_id      =  data.aws_vpc.default.id

  ingress_cidr_blocks      =  var.ingress_cidr_blocks
  ingress_rules            = var.ingress_rules
  ingress_with_cidr_blocks = [
    {
      from_port   = 8080
      to_port     = 8080
      protocol    = "tcp"
      description = "User-service ports"
      cidr_blocks = "192.168.0.0/16"
    },
    {
      rule        = "postgresql-tcp"
      cidr_blocks = "0.0.0.0/0"
    },
  ]
}
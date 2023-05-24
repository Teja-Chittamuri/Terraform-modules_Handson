module "myvpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "4.0.1"

  name = "${local.name}-${var.vpc_name}"  # Fetch the name from the locals.tf file 
  cidr = var.vpc_cidr

  azs             = var.az_zones
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets

  # NAT Gateway
  enable_nat_gateway = true
  single_nat_gateway = true

#Internet Gateway
  enable_vpn_gateway = true

  public_subnet_tags = {
    Name = "Public Subnet"
  }
  private_subnet_tags = {
    Name = "Private-Subnet"
  }

  tags =  local.common_tags ## Fetch the tags from the locals.tf file 
  vpc_tags = local.common_tags
}
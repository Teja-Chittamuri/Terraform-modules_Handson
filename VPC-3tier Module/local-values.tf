locals {
  service_name = var.service
  environment = var.environment
  owners        = var.owner
  name = "${var.service}-${var.environment}"
common_tags = {
    owners = local.owners
    environment = local.environment
  }
}

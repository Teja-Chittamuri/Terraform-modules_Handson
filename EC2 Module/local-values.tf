locals {
  Environment = var.environment
  Owner = var.owner
  service_name = var.service
  name = "${var.service}-${var.environment}"
  commontags = {
      owner = local.Owner
      environment = local.Environment
  }
}
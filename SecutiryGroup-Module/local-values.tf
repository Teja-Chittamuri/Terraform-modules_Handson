locals{
    Owner = var.service
    Environment = var.environment
    name = "${var.service}-${var.environment}"
    common_tags ={
        owner = local.Owner
        environment = local.Environment
    }
}
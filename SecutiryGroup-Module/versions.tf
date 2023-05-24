terraform {
    required_version = " ~> 1.4"
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "~> 4.6"
      }
    }
}

# Provider 

provider "aws" {
    region = var.aws_region
}
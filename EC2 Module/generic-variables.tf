variable "aws_region" {
    type = string
    default = "us-west-2"
}

variable "environment" {
  type = string
  default = "PPE"
}

variable "owner" {
  type = string
  default = "DevOps"
}

variable "service" {
  type = string 
  default = "Application Insights"
}
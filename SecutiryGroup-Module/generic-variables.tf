variable "aws_region"{
    type = string 
    default = "us-west-2"
}

variable "service" {
  type = string 
  default = "APPInsights"
}

variable "environment" {
  type = string 
  default = "Production"
}
variable "vpc_name" {
  type = string 
  default = "vpc"
}
variable "vpc_cidr"{
    type = string
    default = "192.168.0.0/16"
}

variable "az_zones"{
    type = list(string)
    default = ["us-west-2a", "us-west-2b"]
}

variable "private_subnets" {
  type = list(string)
  default = ["192.168.10.0/24", "192.168.20.0/24"]
}

variable "public_subnets" {
    type = list(string)
    default = [ "192.168.30.0/24", "192.168.40.0/24" ]
}



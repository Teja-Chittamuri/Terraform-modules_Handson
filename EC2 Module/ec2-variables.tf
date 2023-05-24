variable "instance_name" {
  type = string
  default = "server"
}

variable "az_zone" {
  type = string
  default = "us-west-2a"
}

variable "keypair_name" {
type = string 
default = "secret-key"
}


variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "sg_name" {
  default = "app-sg"
}

variable "cidr_blocks" {
  type = list(string)
  default = ["0.0.0.0/0", "49.204.196.108/32"]
}
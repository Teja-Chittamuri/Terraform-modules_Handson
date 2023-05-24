variable "ingress_cidr_blocks" {
  type = list(string)
  default = [ "192.168.0.0/16","49.204.196.108/32" ]
}

variable "ingress_rules" {
  type = list(string)
  default = [ "http-80-tcp", "https-443-tcp", "ssh-22-tcp" ]
}

variable "sg_name" {
    type = string 
    default = "SG"
  
}
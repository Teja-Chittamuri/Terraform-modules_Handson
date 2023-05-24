output "public_ip" {
  value = module.ec2_instance.public_ip
}

output "instance_state" {
  value = module.ec2_instance.instance_state
}

output "public_ip_dns" {
  value = module.ec2_instance.public_dns
}
output "dev_instance" {
  value       = module.dev_instance.ec2_instance_info
  description = "EC2 info for PROD"
}

output "prod_instance" {
  value       = module.prod_instance.ec2_instance_info
  description = "EC2 info for DEV"
}

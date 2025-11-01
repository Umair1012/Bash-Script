output "ec2_instance_info" {
  value = [
    for instance in aws_instance.example : {
       name        = instance.tags["Name"]    # Instance tag name
      public_ip   = instance.public_ip
      public_dns  = instance.public_dns
      username    = "ec2-user"     # change to "ubuntu" for Ubuntu AMIs
      ssh_command = "ssh -i ~/.ssh/terraform-key.pem ec2-user@${instance.public_dns}"
    }
  ]
}

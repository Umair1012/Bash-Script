#Step 1 — Create Key Pair
resource "aws_key_pair" "default" {
  key_name   = var.key_name
  public_key = file(abspath(var.ssh_public_key_path))
}

#Step 2 — Call EC2 Module
module "dev_instance" {
  source           = "./modules/ec2"
  ami              = var.ami
  env              = "dev"
  instance_type    = var.instance_type
  key_name         = var.key_name
  ssh_cidr         = var.ssh_cidr
  tags             = var.tags
  instance_count   = var.instance_count
  root_volume_size = var.root_volume_size
  root_volume_type = var.root_volume_type
  sg_description   = var.sg_description
  ec2_username     = var.ec2_username
  ssh_port         = var.ssh_port
  sg_name          = var.sg_name

}

module "prod_instance" {
  source         = "./modules/ec2"
  ami            = "ami-0ecb62995f68bb549"
  env            = "prod"
  instance_type  = "t3.micro"
  key_name       = var.key_name
  ssh_cidr       = var.ssh_cidr
  sg_description = var.sg_description
  ec2_username   = "Ubuntu"
  ssh_port       = var.ssh_port
  sg_name        = var.sg_name
  tags = {
    Name = "Prod"
  }
  instance_count   = 2
  root_volume_size = 10
  root_volume_type = var.root_volume_type
}

variable "ssh_public_key_path" {
  description = "Path to your SSH public key"
  type        = string
  default     = "/home/codespace/.ssh/id_rsa.pub"
}

variable "key_name" {
  description = "Key pair name"
  type        = string
}

variable "env" {
  description = "Environemnt Name"
  type        = string

}


variable "ami" {
  description = "AMI ID for EC2 instance"
  type        = string

}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string

}

variable "ssh_cidr" {
  description = "Allowed CIDR block for SSH access"
  type        = string
  
}

variable "sg_name" {

}

variable "sg_description" {

}

variable "ssh_port" {
  description = "Port to allow SSH"
  type        = number
 
}

variable "instance_count" {
  description = "Number of EC2 instances to create"
  type        = number

}

variable "ec2_username" {
  description = "Default SSH username for EC2 instance"
  type        = string
}

variable "root_volume_size" {
  description = "Size of the EC2 root volume in GB"
  type        = number
}

variable "root_volume_type" {
  description = "Type of the EC2 root volume (gp2, gp3, io1, etc.)"
  type        = string
}


variable "tags" {
  description = "Resource tags"
  type = map(string)
}


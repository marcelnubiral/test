provider "aws" {
  region = var.aws_region
}

# Create AWS ec2 instance
resource "aws_instance" "myFirstInstance" {
  ami           = var.ami_id
  #key_name = var.key_name
  instance_type = var.instance_type
  security_groups = [var.security_group]
  subnet_id = "subnet-0b53a6ae43e71d4b3" 
  tags= {
    Name = var.tag_name
  }
}


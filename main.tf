provider "aws" {
  region = var.aws_region
}

# Create AWS ec2 instance
resource "aws_instance" "myFirstInstance" {
  ami           = var.ami_id
  #key_name = var.key_name
  instance_type = var.instance_type
  security_groups = [var.security_group]
  subnet_id = var.subnet_id  
  tags= {
    Name = var.tag_name
  }
}


# Provider Configuration
provider "aws" {
  region = var.aws_region
}

# EC2 Instance Resource
resource "aws_instance" "kafka_server" {
  ami           = var.ec2_ami
  instance_type = var.ec2_instance_type
  key_name      = var.ec2_key_pair
  vpc_security_group_ids = [var.default_security_group]  # Specify the default security group ID or replace it with your desired security group
  subnet_id     = data.aws_subnet.default.id
  associate_public_ip_address = true

  tags = {
    Name = var.instance_name
  }
}

terraform {
  required_version = ">= 0.12"
}
provider "aws" {
  region = var.aws_region
}

resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr_block
}

resource "aws_subnet" "subnets" {
  count             = length(var.subnet_cidr_blocks)
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.subnet_cidr_blocks[count.index]
  availability_zone = "ap-south-1a"
}

resource "aws_instance" "example" {
  ami           = "ami-05e00961530ae1b55"
  instance_type = "t2.large"
  subnet_id     = aws_subnet.subnets[0].id
  associate_public_ip_address = true
  iam_instance_profile = data.aws_iam_instance_profile.existing_role.role_name

  tags = {
    Name = "kafka"
  }
}

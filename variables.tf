# variables.tf

variable "aws_region" {
  description = "AWS region"
  default     = "ap-south-1"
}

variable "ec2_ami" {
  description = "Default AMI ID for the EC2 instance"
  default     = "ami-05e00961530ae1b55"
}

variable "ec2_instance_type" {
  description = "Default instance type for the EC2 instance"
  default     = "t2.large"
}

variable "ec2_key_pair" {
  description = "Default key pair for the EC2 instance"
  default     = "assignment-3.pem"
}

variable "default_vpc_id" {
  description = "Default VPC ID"
  default     = "vpc-008d2983009702a85"
}

variable "default_security_group" {
  description = "Default security group ID"
  default     = "sg-07d0c27f4f5b3ef97"
}

variable "instance_name" {
  description = "Name for the EC2 instance"
  default     = "kafka-server"
}

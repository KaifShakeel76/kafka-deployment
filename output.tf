output "vpc_id" {
  value = aws_vpc.main.id
}

output "subnet_ids" {
  value = aws_subnet.subnets[*].id
}

output "public_ip" {
  value = aws_instance.example.public_ip
}

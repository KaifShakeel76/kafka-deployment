output "public_ip" {
  value = aws_instance.kafka_server.public_ip
}

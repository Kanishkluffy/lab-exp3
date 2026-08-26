output "web_public_ips" {
  description = "Public IP addresses of all web instances"
  value       = aws_instance.web[*].public_ip
}

output "db_private_ip" {
  description = "Private IP address of the database instance"
  value       = aws_instance.db.private_ip
}

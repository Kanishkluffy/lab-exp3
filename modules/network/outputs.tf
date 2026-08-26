output "vpc_id" {
  description = "ID of the VPC"
  value       = aws_vpc.main.id
}
 
output "public_subnet_id" {
  description = "ID of the public subnet, consumed by the compute module"
  value       = aws_subnet.public.id
}
 
output "private_subnet_id" {
  description = "ID of the private subnet, consumed by the compute module"
  value       = aws_subnet.private.id
}
 
output "web_sg_id" {
  description = "ID of the web-tier security group"
  value       = aws_security_group.web.id
}
 
output "db_sg_id" {
  description = "ID of the database-tier security group"
  value       = aws_security_group.db.id
}

variable "web_count" {
  description = "Number of web server instances to create"
  type        = number
  default     = 2
}
 
variable "ami_id" {
  description = "AMI ID used for both the web and database instances"
  type        = string
}
 
variable "instance_type" {
  description = "EC2 instance type for web and database instances"
  type        = string
  default     = "t3.micro"
}
 
variable "key_name" {
  description = "Name of the existing EC2 key pair used for SSH access to the web tier"
  type        = string
}
 
variable "public_subnet_id" {
  description = "Public subnet ID, supplied by the network module"
  type        = string
}
 
variable "private_subnet_id" {
  description = "Private subnet ID, supplied by the network module"
  type        = string
}
 
variable "web_sg_id" {
  description = "Web-tier security group ID, supplied by the network module"
  type        = string
}
 
variable "db_sg_id" {
  description = "Database-tier security group ID, supplied by the network module"
  type        = string
}

variable "admin_cidr" {
  description = "CIDR block of the administrator network allowed SSH access to web instances"
  type        = string
}
 
variable "web_count" {
  description = "Number of web server instances to provision"
  type        = number
  default     = 2
}
 
variable "ami_id" {
  description = "AMI ID used for both web and database instances (e.g. Ubuntu 22.04 in ap-south-1)"
  type        = string
}
 
variable "key_name" {
  description = "Name of the existing EC2 key pair used for SSH access"
  type        = string
}

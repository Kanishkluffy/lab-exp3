variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public (web) subnet"
  type        = string
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private (data) subnet"
  type        = string
}

variable "public_az" {
  description = "Availability zone for the public subnet"
  type        = string
}

variable "private_az" {
  description = "Availability zone for the private subnet"
  type        = string
}

variable "admin_cidr" {
  description = "CIDR block of the administrator network allowed to SSH into the web tier"
  type        = string
}

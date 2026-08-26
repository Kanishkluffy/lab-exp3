module "network" {
  source              = "./modules/network"
  vpc_cidr            = "10.0.0.0/16"
  public_subnet_cidr  = "10.0.1.0/24"
  private_subnet_cidr = "10.0.2.0/24"
  public_az           = "ap-south-1a"
  private_az          = "ap-south-1b"
  admin_cidr          = var.admin_cidr
}

module "compute" {
  source            = "./modules/compute"
  web_count         = var.web_count
  ami_id            = var.ami_id
  instance_type     = "t3.micro"
  key_name          = var.key_name
  public_subnet_id  = module.network.public_subnet_id
  private_subnet_id = module.network.private_subnet_id
  web_sg_id         = module.network.web_sg_id
  db_sg_id          = module.network.db_sg_id
}

terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
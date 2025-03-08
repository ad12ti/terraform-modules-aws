provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source               = "https://github.com/ad12ti/terraform-modules-aws/tree/1c200f7c3a5fc50b49757d14c0a72a68c7ca7189/vpc"
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  azs                  = var.azs
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_ids" {
  value = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
  value = module.vpc.private_subnet_ids
}

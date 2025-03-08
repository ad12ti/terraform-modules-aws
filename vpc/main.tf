provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source               = "https://github.com/ad12ti/terraform-modules-aws/tree/86593ef16863da5b640b06efc4c826996cafb5b7/vpc"
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

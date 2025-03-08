provider "aws" {
  region = "us-east-1" # Change this to your preferred region
}

module "vpc" {
  source = "./modules/vpc"  # Assuming you create a separate module for VPC

  vpc_cidr = "10.0.0.0/16"
  public_subnet_cidrs  = ["10.0.1.0/24"]
  private_subnet_cidrs = ["10.0.2.0/24"]
  azs                 = ["us-east-1a", "us-east-1b"]
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

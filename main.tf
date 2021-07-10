terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
provider "aws" {
  region = var.region
}
# provider "aws" {
#   version = "~> 2.0"
#   region  = "us-east-1" # Setting my region to London. Use your own region here
# }


# terraform {
#   backend "s3" {
#     bucket = "rootdev_mehmet_bucket"
#     key    = "rootdevs/dev/key"
#     region = "us-east-1"
#   }
# }

# module "vpc" {
#   source        = "turanmehmet/vpc/aws"
#   version       = "1.0.0"
#   region        = "us-east-1"
#   cidr_block    = "10.0.0.0/16"
#   public_cidr1  = "10.0.101.0/24"
#   public_cidr2  = "10.0.102.0/24"
#   public_cidr3  = "10.0.103.0/24"
#   private_cidr1 = "10.0.1.0/24"
#   private_cidr2 = "10.0.2.0/24"
#   private_cidr3 = "10.0.3.0/24"
#   tags = {
#     Name    = "VPC"
#     Team    = "DevOps"
#     Billing = "CFO"
#     Quarter = "3"
#     AppName = "Wordpress"
#   }
# }
# output "vpc_id" {
#   value = module.vpc.vpc
# }
# output "public" {
#   value = module.vpc.public_subnets
# }
# output "private" {
#   value = module.vpc.private_subnets
# }
# output "region" {
#   value = module.vpc.region
# }

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-west-2"
}

module "vpc" {
    source = "./modules/vpc"
    vpc_cidr = var.aws_vpc_cidr
    public_subnet_cidr = var.aws_public_subnet_cidr
    private_subnet_cidr = var.aws_private_subnet_cidr
  
}

module "iam" {
    source = "./modules/iam"  
}
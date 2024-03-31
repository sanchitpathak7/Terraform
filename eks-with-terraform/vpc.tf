provider "aws" {
    region = var.aws_region
}

data "aws_availability_zones" "available_zones" {}

module "vpc" {
    source = "terraform-aws-modules/vpc/aws"
    version = "5.7.0"

    name                    = "sanchit-vpc"
    cidr                    = var.vpc_cidr
    azs                     = data.aws_availability_zones.available_zones.names
    private_subnets         = var.private_subnets
    public_subnets          = var.public_subnets
    enable_nat_gateway      = true
    enable_dns_support      = true
    enable_dns_hostnames    = true
    tags = {
        Terraform           = "true"
        Environment         = "dev"
        Cluster             = var.cluster_name
    }
}
# VPC
vpc_cidr = "10.0.0.0/16"

# Subnets
private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
public_subnets  = ["10.0.6.0/24", "10.0.7.0/24"]

# Security Group
ingress_sg_cidr_range = ["10.0.0.0/8", "172.16.0.0/12", "192.168.0.0/16"]
egress_sg_cidr_range  = ["0.0.0.0/0"]

# EKS
cluster_name     = "sanchit-eks"
cluster_version  = "1.29"
ami_type         = "AL2_x86_64"
instance_type    = ["t2.micro"]
min_capacity     = 2
max_capacity     = 3
desired_capacity = 2
capacity_type    = "SPOT"
key_name         = "sanchit-key"
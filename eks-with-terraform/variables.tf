variable "aws_region" {
    default = "us-east-2"
    description = "AWS Region"
}

variable "vpc_cidr" {
    description = "Default VPC CIDR range"
}

variable "private_subnets" {
    type = list(string)
    description = "List of private subnet CIDR blocks"
}

variable "public_subnets" {
    type = list(string)
    description = "List of public subnet CIDR blocks"
}

variable "cluster_name" {
    type = string
    description = "Name of EKS cluster"
}

variable "cluster_version" {
    type = string
    description = "Version of EKS cluster"
}

variable "ami_type" {
    type = string
    description = "The AMI type for worker nodes"
}

variable "instance_type" {
    type = list(string)
    description = "The instance type for worker nodes"
}

variable "min_capacity" {
    type = number
    description = "The minimum capacity for the node group"
}

variable "max_capacity" {
    type = number
    description = "The maximum capacity for the node group"
}

variable "desired_capacity" {
    type = number
    description = "The desired capacity for the node group"
}

variable "capacity_type" {
    type = string
    description = "The capacity type for worker nodes"
}

variable "key_name" {
    type = string
    description = "The key pair name for SSH access"
}

variable "ingress_sg_cidr_range" {
    type = list(string)
    description = "Ingress Security Group CIDR Allowed range"
}

variable "egress_sg_cidr_range" {
    type = list(string)
    description = "Ingress Security Group CIDR Allowed range"
}
module "eks" {
    source = "terraform-aws-modules/eks/aws"
    version = "~>20.0"
    cluster_name = var.cluster_name
    cluster_version = var.cluster_version
    enable_irsa = true
    tags = {
        Terraform   = "true"
        Environment = "dev"
        Cluster     = var.cluster_name
    }

    cluster_endpoint_public_access  = true
    cluster_addons = {
        coredns = {
            most_recent = true
        }
        kube-proxy = {
            most_recent = true
        }
        vpc-cni = {
            most_recent = true
        }
    }

    vpc_id = module.vpc.vpc_id
    subnet_ids = module.vpc.private_subnets

    eks_managed_node_group_defaults = {
        ami_type               = var.ami_type
        instance_types         = var.instance_type
        vpc_security_group_ids = [aws_security_group.worker_mgmt.id]
    }

    eks_managed_node_groups = {
        node_group = {
            min_size      = var.min_capacity
            max_size      = var.max_capacity
            desired_size  = var.desired_capacity
            capacity_type = var.capacity_type
            key_name      = var.key_name
        }
    }
}
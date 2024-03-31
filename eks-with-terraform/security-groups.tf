resource "aws_security_group" "worker_mgmt" {
  name_prefix = "worker_node_management"
  vpc_id      = module.vpc.vpc_id
}

resource "aws_security_group_rule" "worker_mgmt_ingress" {
    description       = "allow inbound traffic from eks"
    from_port         = 0
    protocol          = "-1"
    to_port           = 0
    security_group_id = aws_security_group.worker_mgmt.id
    type              = "ingress"
    cidr_blocks       = var.ingress_sg_cidr_range
}

resource "aws_security_group_rule" "worker_mgmt_egress" {
    description       = "allow outbound traffic to anywhere"
    from_port         = 0
    protocol          = "-1"
    to_port           = 0
    security_group_id = aws_security_group.worker_mgmt.id
    type              = "egress"
    cidr_blocks       = var.egress_sg_cidr_range
}
locals {
  azs = distinct(concat(
    [for s in var.vpc_database_subnets : s.az],
    [for s in var.vpc_app_subnets : s.az],
    [for s in var.vpc_public_subnets : s.az]
  ))
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.vpc_name
  cidr = var.vpc_prefix

  azs              = local.azs
  database_subnets = [for s in var.vpc_database_subnets : s.prefix]
  private_subnets  = [for s in var.vpc_app_subnets : s.prefix]
  public_subnets   = [for s in var.vpc_public_subnets : s.prefix]

  enable_nat_gateway = true
  single_nat_gateway = true
  enable_vpn_gateway = false

  tags = {
    "env:provisioner"  = "Terraform",
    "env:platform"     = "aws"
    "tfc:organization" = "kloehfelm-demo"
    "tfc:workspace"    = "tf-aws-network"
  }
}

resource "aws_security_group" "web" {
  name        = "allow-public-web"
  description = "Allow web inbound traffic"
  vpc_id      = module.vpc.vpc_id

  ingress {
    description = "Inbound Web Traffic: 443"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "Inbound Web Traffic: 80"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "Inbound Management Traffic: 22"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name               = "sg-web"
    "env:platform"     = "aws"
    "env:provisioner"  = "Terraform"
    "tfc:organization" = "kloehfelm-demo"
    "tfc:workspace"    = "tf-aws-network"
  }
}

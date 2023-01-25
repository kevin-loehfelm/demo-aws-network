output "network_name" {
  description = "AWS VPC Name"
  value       = module.vpc.name
}

output "network_id" {
  description = "AWS VPC ID"
  value       = module.vpc.vpc_id
}

output "platform" {
  description = "Platform"
  value       = "aws"
}

output "region" {
  description = "AWS Region"
  value       = var.aws_region
}

output "web_security_group" {
  description = "AWS Web Security Group"
  value       = aws_security_group.web.id
}

output "network_subnets" {
  description = "AWS VPC Subnets"
  value       = module.vpc.public_subnets
}
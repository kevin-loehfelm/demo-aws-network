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

output "public_subnets" {
  description = "AWS Public Subnets"
  value       = module.vpc.public_subnets
}

output "app_subnets" {
  description = "AWS Application Subnets"
  value       = module.vpc.private_subnets
}

output "database_subnets" {
  description = "AWS Database Subnets"
  value       = module.vpc.database_subnets
}
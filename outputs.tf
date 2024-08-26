output "prod1_vpc" {
  description = "aws production 1 vpc"
  value       = module.prod1.vpc
}

output "prod1_region" {
  description = "aws production 1 region"
  value       = module.prod1.region
}

/*
output "dr" {
  description = "aws dr 1 vpc"
  value       = module.dr.vpc
}
*/
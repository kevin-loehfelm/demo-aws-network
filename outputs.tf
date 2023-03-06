output "prod1" {
  description = "aws production 1 vpc"
  value       = module.prod1.vpc
}

output "dr" {
  description = "aws dr 1 vpc"
  value       = module.dr.vpc
}
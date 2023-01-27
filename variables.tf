variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
  default     = "aws-web-demo"
}

variable "vpc_prefix" {
  type        = string
  description = "CIDR Notation of the VPC IP Prefix"
  default     = "10.10.0.0/20"
}

variable "enable_nat" {
  type        = bool
  description = "Enable NAT Gateway"
  default     = true
}

variable "vpc_database_subnets" {
  description = "VPC Database Subnets"
  type = list(object({
    az     = string
    prefix = string
  }))
  default = [
    {
      prefix = "10.10.0.0/24"
      az     = "us-east-1a"
    },
    {
      prefix = "10.10.1.0/24"
      az     = "us-east-1b"
    },
    {
      prefix = "10.10.2.0/24"
      az     = "us-east-1c"
    },
    {
      prefix = "10.10.3.0/24"
      az     = "us-east-1d"
    }
  ]
}

variable "vpc_app_subnets" {
  description = "VPC Application Subnets"
  type = list(object({
    az     = string
    prefix = string
  }))
  default = [
    {
      prefix = "10.10.4.0/24"
      az     = "us-east-1a"
    },
    {
      prefix = "10.10.5.0/24"
      az     = "us-east-1b"
    },
    {
      prefix = "10.10.6.0/24"
      az     = "us-east-1c"
    },
    {
      prefix = "10.10.7.0/24"
      az     = "us-east-1d"
    }
  ]
}

variable "vpc_public_subnets" {
  description = "VPC DMZ/Public Subnets"
  type = list(object({
    az     = string
    prefix = string
  }))
  default = [
    {
      prefix = "10.10.8.0/24"
      az     = "us-east-1a"
    },
    {
      prefix = "10.10.9.0/24"
      az     = "us-east-1b"
    },
    {
      prefix = "10.10.10.0/24"
      az     = "us-east-1c"
    },
    {
      prefix = "10.10.11.0/24"
      az     = "us-east-1d"
    }
  ]
}

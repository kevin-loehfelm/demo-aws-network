terraform {
  required_version = ">= 1.9.5" # Aug 26 2024

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.64.0" # Aug 26 2024
    }
  }

  cloud {
    organization = "kloehfelm-demo"

    workspaces {
      name = "demo-aws-network"
    }
  }
}

provider "aws" {}

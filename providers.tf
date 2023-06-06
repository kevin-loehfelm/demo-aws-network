terraform {
  required_version = "~>1.4.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0.0"
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
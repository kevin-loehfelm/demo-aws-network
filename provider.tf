terraform {
  required_version = "1.3.9"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "> 1.0"
    }
  }

  cloud {
    organization = "kloehfelm-demo"

    workspaces {
      name = "demo-aws-network"
    }
  }
}

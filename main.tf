module "prod1" {
  source  = "app.terraform.io/kloehfelm-demo/network-aws/aws"
  version = "0.0.1"

  label      = "use1-prod"
  aws_region = "us-east-1"
  tags = {
    "env:site" : "production"
  }
}

module "dr" {
  source  = "app.terraform.io/kloehfelm-demo/network-aws/aws"
  version = "0.0.1"

  label      = "usw2-dr"
  aws_region = "us-west-2"
  tags = {
    "env:site" : "dr"
  }
}
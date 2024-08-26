module "prod1" {
  source  = "app.terraform.io/kloehfelm-demo/network-aws/aws"
  version = "0.0.7"

  label                   = "use1-prod"
  aws_region              = "us-east-1"
  enable_nat              = true
  enable_database_subnets = true
  tags = {
    "env:site" : "production"
  }
}

/*
module "dr" {
  source  = "app.terraform.io/kloehfelm-demo/network-aws/aws"
  version = "0.0.4"

  label      = "usw2-dr"
  aws_region = "us-west-2"
  tags = {
    "env:site" : "dr"
  }
}
*/
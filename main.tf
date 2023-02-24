# module "us-east-1" {
#   source  = "app.terraform.io/kloehfelm-demo/demo-network/aws"
#   version = "0.0.2"
# 
#   label = "prod-network"
#   aws_region = "us-east-1"
#   tags = {
#     "env:site": "production"
#   }
# }

# module "us-west-2" {
#   source  = "app.terraform.io/kloehfelm-demo/demo-network/aws"
#   version = "0.0.2"
# 
#   label = "dr-network"
#   aws_region = "us-west-2"
#   tags = {
#     "env:site": "dr"
#   }
# }
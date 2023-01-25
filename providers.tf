terraform {
  cloud {
    organization = "kloehfelm-demo"
    # hostname = "app.terraform.io"

    workspaces {
      name = "tf-aws-network"
    }
  }
}
terraform {
  cloud {
    organization = "kloehfelm-demo"

    workspaces {
      name = "tf-aws-network"
    }
  }
}

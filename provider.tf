provider "aws" {
  region = "us-east-1"
}
terraform {
  backend "s3" {
    bucket       = "slbucketremotebackend"
    key          = "dev/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }
}


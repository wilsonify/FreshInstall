provider "aws" {}

terraform {
  backend "s3" {}
  required_providers {
    aws = {
      version = "~> 3.76.1"
    }
  }
}

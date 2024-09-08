terraform {
  backend "s3" {
    bucket         = "064592191516-terraform-state"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "064592191516-lock-table"
    profile        = "064592191516"
  }
  required_providers {
    aws = {
      version = "~> 3.76.1"
    }
  }
}

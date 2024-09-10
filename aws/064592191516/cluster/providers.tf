provider "aws" {
  region = var.aws_region
}

terraform {
  required_version = ">= 1.0.0"  # Specifying the required Terraform version
  backend "s3" {
    bucket         = "064592191516-terraform-state"  # Hardcoded
    key            = "terraform.tfstate"             # Hardcoded
    region         = "us-east-1"                     # Hardcoded
    dynamodb_table = "064592191516-lock-table"       # Hardcoded
    profile        = "064592191516"                  # Hardcoded
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"  # Added source for AWS provider
      version = "~> 3.76.1"
    }
  }
}
provider "aws" {}

terraform {
  required_version = ">1.5.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.76.1"
    }
  }
}

# Define a variable for the AWS account number
variable "aws_account_number" {
  description = "AWS Account Number"
  type        = string
  default     = "064592191516"
}

resource "aws_s3_bucket" "books" {
  arn                 = "arn:aws:s3:::${var.aws_account_number}-books"
  bucket              = "${var.aws_account_number}-books"
  force_destroy       = false
  hosted_zone_id      = "Z3AQBSTGFYJSTF"
  object_lock_enabled = false
}

resource "aws_s3_bucket_public_access_block" "books_public_access_block" {
  bucket                  = aws_s3_bucket.books.bucket
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_versioning" "books_versioning" {
  bucket = aws_s3_bucket.books.bucket
  versioning_configuration {
    status     = "Enabled"
    mfa_delete = "Disabled"

  }
}

resource "aws_s3_bucket_request_payment_configuration" "books_payment_config" {
  bucket = aws_s3_bucket.books.bucket
  payer  = "BucketOwner"
}

resource "aws_s3_bucket_server_side_encryption_configuration" "book_sse_config" {
  bucket = aws_s3_bucket.books.bucket
  rule {
    bucket_key_enabled = true
    apply_server_side_encryption_by_default {
      kms_master_key_id = "arn:aws:kms:us-east-1:${var.aws_account_number}:alias/aws/s3"
      sse_algorithm     = "aws:kms"
    }
  }
}

output "aws_s3_bucket_books_arn" {
  value = aws_s3_bucket.books.arn
}
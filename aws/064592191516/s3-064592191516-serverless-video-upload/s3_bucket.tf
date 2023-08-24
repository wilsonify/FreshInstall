terraform {
  required_version = ">= 1.0"
}
data "aws_region" "current" {}

resource "aws_s3_bucket" "tfer--064592191516-serverless-video-upload" {
  arn                 = "arn:aws:s3:::064592191516-serverless-video-upload"
  bucket              = "064592191516-serverless-video-upload"
  force_destroy       = "false"
  hosted_zone_id      = "Z3AQBSTGFYJSTF"
  object_lock_enabled = "false"
}

resource "aws_s3_bucket_server_side_encryption_configuration" "this" {
  count  = 1
  bucket = aws_s3_bucket.tfer--064592191516-serverless-video-upload.id
  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = "arn:aws:kms:us-east-1:064592191516:alias/aws/s3"
      sse_algorithm     = "aws:kms"
    }
  }
}


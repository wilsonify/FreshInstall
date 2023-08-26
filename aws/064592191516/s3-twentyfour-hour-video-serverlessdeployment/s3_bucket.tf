resource "aws_s3_bucket" "tfer--twentyfour-hour-video-de-serverlessdeploymentbuck-12uj7hsp7ex2t" {
  arn                 = "arn:aws:s3:::twentyfour-hour-video-de-serverlessdeploymentbuck-12uj7hsp7ex2t"
  bucket              = "twentyfour-hour-video-de-serverlessdeploymentbuck-12uj7hsp7ex2t"
  force_destroy       = "false"
  hosted_zone_id      = "Z3AQBSTGFYJSTF"
  object_lock_enabled = "false"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "s3:*",
      "Condition": {
        "Bool": {
          "aws:SecureTransport": "false"
        }
      },
      "Effect": "Deny",
      "Principal": "*",
      "Resource": [
        "arn:aws:s3:::twentyfour-hour-video-de-serverlessdeploymentbuck-12uj7hsp7ex2t/*",
        "arn:aws:s3:::twentyfour-hour-video-de-serverlessdeploymentbuck-12uj7hsp7ex2t"
      ]
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  request_payer = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "false"
    }
  }

  tags = {
    STAGE = "dev"
  }

  tags_all = {
    STAGE = "dev"
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--064592191516-mov" {
  arn                 = "arn:aws:s3:::064592191516-mov"
  bucket              = "064592191516-mov"
  force_destroy       = "false"
  hosted_zone_id      = "Z3AQBSTGFYJSTF"
  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = "arn:aws:kms:us-east-1:064592191516:alias/aws/s3"
        sse_algorithm     = "aws:kms"
      }

      bucket_key_enabled = "true"
    }
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--064592191516-mov" {
  arn                 = "arn:aws:s3:::064592191516-mov"
  bucket              = "064592191516-mov"
  force_destroy       = "false"
  hosted_zone_id      = "Z3AQBSTGFYJSTF"
  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = "arn:aws:kms:us-east-1:064592191516:alias/aws/s3"
        sse_algorithm     = "aws:kms"
      }

      bucket_key_enabled = "true"
    }
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}


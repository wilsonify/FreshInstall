resource "aws_s3_bucket" "tfer--064592191516-terraform-state" {
  arn                 = "arn:aws:s3:::064592191516-terraform-state"
  bucket              = "064592191516-terraform-state"
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
        "arn:aws:s3:::064592191516-terraform-state",
        "arn:aws:s3:::064592191516-terraform-state/*"
      ],
      "Sid": "EnforcedTLS"
    },
    {
      "Action": "s3:*",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::064592191516:root"
      },
      "Resource": [
        "arn:aws:s3:::064592191516-terraform-state",
        "arn:aws:s3:::064592191516-terraform-state/*"
      ],
      "Sid": "RootAccess"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  request_payer = "BucketOwner"

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
    enabled    = "true"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--064592191516-terraform-state" {
  arn                 = "arn:aws:s3:::064592191516-terraform-state"
  bucket              = "064592191516-terraform-state"
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
        "arn:aws:s3:::064592191516-terraform-state",
        "arn:aws:s3:::064592191516-terraform-state/*"
      ],
      "Sid": "EnforcedTLS"
    },
    {
      "Action": "s3:*",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::064592191516:root"
      },
      "Resource": [
        "arn:aws:s3:::064592191516-terraform-state",
        "arn:aws:s3:::064592191516-terraform-state/*"
      ],
      "Sid": "RootAccess"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  request_payer = "BucketOwner"

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
    enabled    = "true"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--064592191516-terraform-state" {
  arn                 = "arn:aws:s3:::064592191516-terraform-state"
  bucket              = "064592191516-terraform-state"
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
        "arn:aws:s3:::064592191516-terraform-state",
        "arn:aws:s3:::064592191516-terraform-state/*"
      ],
      "Sid": "EnforcedTLS"
    },
    {
      "Action": "s3:*",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::064592191516:root"
      },
      "Resource": [
        "arn:aws:s3:::064592191516-terraform-state",
        "arn:aws:s3:::064592191516-terraform-state/*"
      ],
      "Sid": "RootAccess"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  request_payer = "BucketOwner"

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
    enabled    = "true"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--064592191516-terraform-state" {
  arn                 = "arn:aws:s3:::064592191516-terraform-state"
  bucket              = "064592191516-terraform-state"
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
        "arn:aws:s3:::064592191516-terraform-state",
        "arn:aws:s3:::064592191516-terraform-state/*"
      ],
      "Sid": "EnforcedTLS"
    },
    {
      "Action": "s3:*",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::064592191516:root"
      },
      "Resource": [
        "arn:aws:s3:::064592191516-terraform-state",
        "arn:aws:s3:::064592191516-terraform-state/*"
      ],
      "Sid": "RootAccess"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  request_payer = "BucketOwner"

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
    enabled    = "true"
    mfa_delete = "false"
  }
}


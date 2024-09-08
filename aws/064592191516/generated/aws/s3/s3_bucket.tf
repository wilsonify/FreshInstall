resource "aws_s3_bucket" "tfer--064592191516-audio" {
  arn                 = "arn:aws:s3:::064592191516-audio"
  bucket              = "064592191516-audio"
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

resource "aws_s3_bucket" "tfer--064592191516-backups" {
  arn                 = "arn:aws:s3:::064592191516-backups"
  bucket              = "064592191516-backups"
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

resource "aws_s3_bucket" "tfer--064592191516-books" {
  arn                 = "arn:aws:s3:::064592191516-books"
  bucket              = "064592191516-books"
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

resource "aws_s3_bucket" "tfer--064592191516-docs" {
  arn                 = "arn:aws:s3:::064592191516-docs"
  bucket              = "064592191516-docs"
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

resource "aws_s3_bucket" "tfer--064592191516-kaggle" {
  arn                 = "arn:aws:s3:::064592191516-kaggle"
  bucket              = "064592191516-kaggle"
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

resource "aws_s3_bucket" "tfer--064592191516-ml-engineering" {
  arn                 = "arn:aws:s3:::064592191516-ml-engineering"
  bucket              = "064592191516-ml-engineering"
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

resource "aws_s3_bucket" "tfer--064592191516-mlflow" {
  arn                 = "arn:aws:s3:::064592191516-mlflow"
  bucket              = "064592191516-mlflow"
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

resource "aws_s3_bucket" "tfer--064592191516-models" {
  arn                 = "arn:aws:s3:::064592191516-models"
  bucket              = "064592191516-models"
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

resource "aws_s3_bucket" "tfer--064592191516-pics" {
  arn                 = "arn:aws:s3:::064592191516-pics"
  bucket              = "064592191516-pics"
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

resource "aws_s3_bucket" "tfer--064592191516-pokemon" {
  arn                 = "arn:aws:s3:::064592191516-pokemon"
  bucket              = "064592191516-pokemon"
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

resource "aws_s3_bucket" "tfer--064592191516-tele" {
  arn                 = "arn:aws:s3:::064592191516-tele"
  bucket              = "064592191516-tele"
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

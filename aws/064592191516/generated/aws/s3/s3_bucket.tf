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

resource "aws_s3_bucket" "tfer--064592191516-serverless-video-transcode" {
  arn                 = "arn:aws:s3:::064592191516-serverless-video-transcode"
  bucket              = "064592191516-serverless-video-transcode"
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

resource "aws_s3_bucket" "tfer--064592191516-serverless-video-transcode-python" {
  arn                 = "arn:aws:s3:::064592191516-serverless-video-transcode-python"
  bucket              = "064592191516-serverless-video-transcode-python"
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

resource "aws_s3_bucket" "tfer--064592191516-serverless-video-upload" {
  arn                 = "arn:aws:s3:::064592191516-serverless-video-upload"
  bucket              = "064592191516-serverless-video-upload"
  force_destroy       = "false"
  hosted_zone_id      = "Z3AQBSTGFYJSTF"
  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

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

resource "aws_s3_bucket" "tfer--064592191516-serverless-video-upload-python" {
  arn                 = "arn:aws:s3:::064592191516-serverless-video-upload-python"
  bucket              = "064592191516-serverless-video-upload-python"
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

resource "aws_s3_bucket" "tfer--hello-world-dev-serverlessdeploymentbucket-120sd55s2qo3u" {
  arn                 = "arn:aws:s3:::hello-world-dev-serverlessdeploymentbucket-120sd55s2qo3u"
  bucket              = "hello-world-dev-serverlessdeploymentbucket-120sd55s2qo3u"
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
        "arn:aws:s3:::hello-world-dev-serverlessdeploymentbucket-120sd55s2qo3u/*",
        "arn:aws:s3:::hello-world-dev-serverlessdeploymentbucket-120sd55s2qo3u"
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

resource "aws_s3_bucket" "tfer--twentyfour-hour-video-de-serverlessdeploymentbuck-rhspwz38q1iv" {
  arn                 = "arn:aws:s3:::twentyfour-hour-video-de-serverlessdeploymentbuck-rhspwz38q1iv"
  bucket              = "twentyfour-hour-video-de-serverlessdeploymentbuck-rhspwz38q1iv"
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
        "arn:aws:s3:::twentyfour-hour-video-de-serverlessdeploymentbuck-rhspwz38q1iv/*",
        "arn:aws:s3:::twentyfour-hour-video-de-serverlessdeploymentbuck-rhspwz38q1iv"
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

resource "aws_s3_bucket" "tfer--twentyfour-hour-video-py-serverlessdeploymentbuck-ssbx8kjplk1k" {
  arn                 = "arn:aws:s3:::twentyfour-hour-video-py-serverlessdeploymentbuck-ssbx8kjplk1k"
  bucket              = "twentyfour-hour-video-py-serverlessdeploymentbuck-ssbx8kjplk1k"
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
        "arn:aws:s3:::twentyfour-hour-video-py-serverlessdeploymentbuck-ssbx8kjplk1k/*",
        "arn:aws:s3:::twentyfour-hour-video-py-serverlessdeploymentbuck-ssbx8kjplk1k"
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

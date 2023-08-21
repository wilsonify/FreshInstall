resource "aws_s3_bucket" "tfer--064592191516-books" {
  arn                 = "arn:aws:s3:::064592191516-books"
  bucket              = "064592191516-books"
  force_destroy       = "false"
  hosted_zone_id      = "Z3AQBSTGFYJSTF"
  object_lock_enabled = "false"
}

resource "aws_s3_bucket_server_side_encryption_configuration" "this" {
  count = local.create_bucket && length(keys(var.server_side_encryption_configuration)) > 0 ? 1 : 0
  bucket = aws_s3_bucket.this[0].id
  expected_bucket_owner = var.expected_bucket_owner
  bucket_key_enabled = "true"
  sse_algorithm     = "aws:kms"
  kms_master_key_id = "arn:aws:kms:us-east-1:064592191516:alias/aws/s3"
}


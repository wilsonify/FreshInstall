resource "aws_s3_bucket_policy" "tfer--064592191516-terraform-state" {
  bucket = "064592191516-terraform-state"
  policy = "{\"Statement\":[{\"Action\":\"s3:*\",\"Condition\":{\"Bool\":{\"aws:SecureTransport\":\"false\"}},\"Effect\":\"Deny\",\"Principal\":\"*\",\"Resource\":[\"arn:aws:s3:::064592191516-terraform-state\",\"arn:aws:s3:::064592191516-terraform-state/*\"],\"Sid\":\"EnforcedTLS\"},{\"Action\":\"s3:*\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::064592191516:root\"},\"Resource\":[\"arn:aws:s3:::064592191516-terraform-state\",\"arn:aws:s3:::064592191516-terraform-state/*\"],\"Sid\":\"RootAccess\"}],\"Version\":\"2012-10-17\"}"
}


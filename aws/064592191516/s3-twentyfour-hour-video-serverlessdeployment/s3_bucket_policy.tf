resource "aws_s3_bucket_policy" "tfer--twentyfour-hour-video-de-serverlessdeploymentbuck-12uj7hsp7ex2t" {
  bucket = "twentyfour-hour-video-de-serverlessdeploymentbuck-12uj7hsp7ex2t"
  policy = "{\"Statement\":[{\"Action\":\"s3:*\",\"Condition\":{\"Bool\":{\"aws:SecureTransport\":\"false\"}},\"Effect\":\"Deny\",\"Principal\":\"*\",\"Resource\":[\"arn:aws:s3:::twentyfour-hour-video-de-serverlessdeploymentbuck-12uj7hsp7ex2t/*\",\"arn:aws:s3:::twentyfour-hour-video-de-serverlessdeploymentbuck-12uj7hsp7ex2t\"]}],\"Version\":\"2008-10-17\"}"
}

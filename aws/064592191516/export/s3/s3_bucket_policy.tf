resource "aws_s3_bucket_policy" "tfer--hello-world-dev-serverlessdeploymentbucket-120sd55s2qo3u" {
  bucket = "hello-world-dev-serverlessdeploymentbucket-120sd55s2qo3u"
  policy = "{\"Statement\":[{\"Action\":\"s3:*\",\"Condition\":{\"Bool\":{\"aws:SecureTransport\":\"false\"}},\"Effect\":\"Deny\",\"Principal\":\"*\",\"Resource\":[\"arn:aws:s3:::hello-world-dev-serverlessdeploymentbucket-120sd55s2qo3u/*\",\"arn:aws:s3:::hello-world-dev-serverlessdeploymentbucket-120sd55s2qo3u\"]}],\"Version\":\"2008-10-17\"}"
}

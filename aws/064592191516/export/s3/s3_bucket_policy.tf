resource "aws_s3_bucket_policy" "tfer--hello-world-dev-serverlessdeploymentbucket-120sd55s2qo3u" {
  bucket = "hello-world-dev-serverlessdeploymentbucket-120sd55s2qo3u"
  policy = "{\"Statement\":[{\"Action\":\"s3:*\",\"Condition\":{\"Bool\":{\"aws:SecureTransport\":\"false\"}},\"Effect\":\"Deny\",\"Principal\":\"*\",\"Resource\":[\"arn:aws:s3:::hello-world-dev-serverlessdeploymentbucket-120sd55s2qo3u/*\",\"arn:aws:s3:::hello-world-dev-serverlessdeploymentbucket-120sd55s2qo3u\"]}],\"Version\":\"2008-10-17\"}"
}

resource "aws_s3_bucket_policy" "tfer--twentyfour-hour-video-de-serverlessdeploymentbuck-rhspwz38q1iv" {
  bucket = "twentyfour-hour-video-de-serverlessdeploymentbuck-rhspwz38q1iv"
  policy = "{\"Statement\":[{\"Action\":\"s3:*\",\"Condition\":{\"Bool\":{\"aws:SecureTransport\":\"false\"}},\"Effect\":\"Deny\",\"Principal\":\"*\",\"Resource\":[\"arn:aws:s3:::twentyfour-hour-video-de-serverlessdeploymentbuck-rhspwz38q1iv/*\",\"arn:aws:s3:::twentyfour-hour-video-de-serverlessdeploymentbuck-rhspwz38q1iv\"]}],\"Version\":\"2008-10-17\"}"
}

resource "aws_s3_bucket_policy" "tfer--twentyfour-hour-video-py-serverlessdeploymentbuck-109stxt1w7iw0" {
  bucket = "twentyfour-hour-video-py-serverlessdeploymentbuck-109stxt1w7iw0"
  policy = "{\"Statement\":[{\"Action\":\"s3:*\",\"Condition\":{\"Bool\":{\"aws:SecureTransport\":\"false\"}},\"Effect\":\"Deny\",\"Principal\":\"*\",\"Resource\":[\"arn:aws:s3:::twentyfour-hour-video-py-serverlessdeploymentbuck-109stxt1w7iw0/*\",\"arn:aws:s3:::twentyfour-hour-video-py-serverlessdeploymentbuck-109stxt1w7iw0\"]}],\"Version\":\"2008-10-17\"}"
}

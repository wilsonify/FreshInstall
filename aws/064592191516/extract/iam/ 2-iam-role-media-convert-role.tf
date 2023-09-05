resource "aws_iam_role" "tfer--media-convert-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "mediaconvert.amazonaws.com"
      },
      "Sid": ""
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows MediaConvert service to call S3 APIs and API Gateway on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonAPIGatewayInvokeFullAccess", "arn:aws:iam::aws:policy/AmazonS3FullAccess"]
  max_session_duration = "3600"
  name                 = "media-convert-role"
  path                 = "/"

  tags = {
    app = "video-encoding-pipeline"
  }

  tags_all = {
    app = "video-encoding-pipeline"
  }
}


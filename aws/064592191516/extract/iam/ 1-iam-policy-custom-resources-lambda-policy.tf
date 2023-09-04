resource "aws_iam_policy" "tfer--custom-resources-lambda-policy" {
  description = "Policy for Custom Resources Lambda"
  name        = "custom-resources-lambda-policy"
  path        = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:PutBucketNotification",
        "s3:GetBucketNotification"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::064592191516-serverless-video-upload-python",
      "Sid": ""
    },
    {
      "Action": [
        "lambda:RemovePermission",
        "lambda:AddPermission"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:lambda:us-east-1:064592191516:function/*",
      "Sid": ""
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}


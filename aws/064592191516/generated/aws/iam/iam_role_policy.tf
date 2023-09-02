resource "aws_iam_role_policy" "tfer--hello-world-dev-us-east-1-lambdaRole_hello-world-dev-lambda" {
  name = "hello-world-dev-lambda"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:CreateLogGroup",
        "logs:TagResource"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:us-east-1:064592191516:log-group:/aws/lambda/hello-world-dev*:*"
      ]
    },
    {
      "Action": [
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:us-east-1:064592191516:log-group:/aws/lambda/hello-world-dev*:*:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "hello-world-dev-us-east-1-lambdaRole"
}

resource "aws_iam_role_policy" "tfer--twentyfour-hour-video-pyt-IamRoleCustomResourcesLa-14ZCQM4Y0UVKN_dev-twentyfour-hour-video-python-custom-resources-lambda" {
  name = "dev-twentyfour-hour-video-python-custom-resources-lambda"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:PutBucketNotification",
        "s3:GetBucketNotification"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::064592191516-serverless-video-upload-python"
    },
    {
      "Action": [
        "lambda:AddPermission",
        "lambda:RemovePermission"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:lambda:us-east-1:064592191516:function:*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "twentyfour-hour-video-pyt-IamRoleCustomResourcesLa-14ZCQM4Y0UVKN"
}

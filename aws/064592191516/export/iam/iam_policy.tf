resource "aws_iam_policy" "tfer--LambdaCloudWatchLogsPolicy" {
  description = "IAM policy to allow Lambda to write logs to CloudWatch Logs"
  name        = "LambdaCloudWatchLogsPolicy"
  path        = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:PutLogEvents",
        "logs:CreateLogStream",
        "logs:CreateLogGroup"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:064592191516:log-group:/aws/lambda/your-lambda-function-name:*",
      "Sid": ""
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

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
        "s3:GetBucketNotification",
        "sqs:*"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::064592191516-serverless-video-upload-python",
        "arn:aws:sqs:us-east-1:064592191516:serverless-video-transcode-sqs-try"
      ],
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

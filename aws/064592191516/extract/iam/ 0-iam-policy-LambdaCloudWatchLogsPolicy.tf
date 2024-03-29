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


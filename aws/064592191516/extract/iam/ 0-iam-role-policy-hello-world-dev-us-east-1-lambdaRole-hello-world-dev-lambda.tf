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


resource "aws_iam_role" "tfer--twentyfour-hour-video-python-IamRoleCustomResources" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Sid": ""
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Lambda functions to call AWS video transcode services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::064592191516:policy/custom-resources-lambda-policy"]
  max_session_duration = "3600"
  name                 = "twentyfour-hour-video-python-IamRoleCustomResources"
  path                 = "/"

  tags = {
    STAGE = "dev"
  }

  tags_all = {
    STAGE = "dev"
  }
}

resource "aws_iam_role" "tfer--twentyfour-hour-video-python-IamRoleCustomResources" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Sid": ""
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Lambda functions to call AWS video transcode services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::064592191516:policy/custom-resources-lambda-policy"]
  max_session_duration = "3600"
  name                 = "twentyfour-hour-video-python-IamRoleCustomResources"
  path                 = "/"

  tags = {
    STAGE = "dev"
  }

  tags_all = {
    STAGE = "dev"
  }
}


resource "aws_iam_role" "tfer--AWSServiceRoleForSupport" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "support.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Enables resource access for AWS to provide billing, administrative and support services"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSSupportServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForSupport"
  path                 = "/aws-service-role/support.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForTrustedAdvisor" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "trustedadvisor.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Access for the AWS Trusted Advisor Service to help reduce cost, increase performance, and improve security of your AWS environment."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSTrustedAdvisorServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForTrustedAdvisor"
  path                 = "/aws-service-role/trustedadvisor.amazonaws.com/"
}

resource "aws_iam_role" "tfer--hello-world-dev-us-east-1-lambdaRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "hello-world-dev-lambda"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogStream\",\"logs:CreateLogGroup\",\"logs:TagResource\"],\"Resource\":[\"arn:aws:logs:us-east-1:064592191516:log-group:/aws/lambda/hello-world-dev*:*\"],\"Effect\":\"Allow\"},{\"Action\":[\"logs:PutLogEvents\"],\"Resource\":[\"arn:aws:logs:us-east-1:064592191516:log-group:/aws/lambda/hello-world-dev*:*:*\"],\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "hello-world-dev-us-east-1-lambdaRole"
  path                 = "/"

  tags = {
    STAGE = "dev"
  }

  tags_all = {
    STAGE = "dev"
  }
}

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

resource "aws_iam_role" "tfer--transcode-video" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Lambda functions to call AWS video transcode services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AWSElementalMediaConvertFullAccess", "arn:aws:iam::aws:policy/AWSLambdaExecute"]
  max_session_duration = "3600"
  name                 = "transcode-video"
  path                 = "/"

  tags = {
    app = "video-encoding-pipeline"
  }

  tags_all = {
    app = "video-encoding-pipeline"
  }
}

resource "aws_iam_role" "tfer--twentyfour-hour-video-pyt-IamRoleCustomResourcesLa-14ZCQM4Y0UVKN" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "dev-twentyfour-hour-video-python-custom-resources-lambda"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"s3:PutBucketNotification\",\"s3:GetBucketNotification\"],\"Resource\":\"arn:aws:s3:::064592191516-serverless-video-upload-python\",\"Effect\":\"Allow\"},{\"Action\":[\"lambda:AddPermission\",\"lambda:RemovePermission\"],\"Resource\":\"arn:aws:lambda:us-east-1:064592191516:function:*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "twentyfour-hour-video-pyt-IamRoleCustomResourcesLa-14ZCQM4Y0UVKN"
  path                 = "/"

  tags = {
    STAGE = "dev"
  }

  tags_all = {
    STAGE = "dev"
  }
}

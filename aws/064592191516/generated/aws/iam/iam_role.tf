resource "aws_iam_role" "tfer--AWSServiceRoleForAmazonSageMakerNotebooks" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "sagemaker.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "AWS SageMaker Notebooks Service Linked Role"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonSageMakerNotebooksServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForAmazonSageMakerNotebooks"
  path                 = "/aws-service-role/sagemaker.amazonaws.com/"
}

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

resource "aws_iam_role" "tfer--AmazonSageMaker-ExecutionRole-20230916T105234" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "sagemaker.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "SageMaker execution role created from the SageMaker AWS Management Console."
  managed_policy_arns  = ["arn:aws:iam::064592191516:policy/service-role/AmazonSageMaker-ExecutionPolicy-20230916T105234", "arn:aws:iam::aws:policy/AmazonSageMakerCanvasAIServicesAccess", "arn:aws:iam::aws:policy/AmazonSageMakerCanvasFullAccess", "arn:aws:iam::aws:policy/AmazonSageMakerFullAccess"]
  max_session_duration = "3600"
  name                 = "AmazonSageMaker-ExecutionRole-20230916T105234"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--AmazonSageMakerServiceCatalogProductsApiGatewayRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "apigateway.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "SageMaker role created from the SageMaker AWS Management Console. This role will grant permissions required to use AWS ApiGateway within the Amazon SageMaker portfolio of products."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AmazonSageMakerServiceCatalogProductsApiGatewayServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AmazonSageMakerServiceCatalogProductsApiGatewayRole"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--AmazonSageMakerServiceCatalogProductsCloudformationRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "cloudformation.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "SageMaker role created from the SageMaker AWS Management Console. This role will grant permissions required to use AWS CloudFormation within the Amazon SageMaker portfolio of products."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AmazonSageMakerServiceCatalogProductsCloudformationServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AmazonSageMakerServiceCatalogProductsCloudformationRole"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--AmazonSageMakerServiceCatalogProductsCodeBuildRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "SageMaker role created from the SageMaker AWS Management Console. This role will grant permissions required to use AWS CodeBuild within the Amazon SageMaker portfolio of products."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonSageMakerServiceCatalogProductsCodeBuildServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AmazonSageMakerServiceCatalogProductsCodeBuildRole"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--AmazonSageMakerServiceCatalogProductsCodePipelineRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codepipeline.amazonaws.com"
      },
      "Sid": ""
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "SageMaker role created from the SageMaker AWS Management Console. This role will grant permissions required to use AWS CodePipeline within the Amazon SageMaker portfolio of products."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AmazonSageMakerServiceCatalogProductsCodePipelineServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AmazonSageMakerServiceCatalogProductsCodePipelineRole"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--AmazonSageMakerServiceCatalogProductsEventsRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "events.amazonaws.com"
      },
      "Sid": ""
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "SageMaker role created from the SageMaker AWS Management Console. This role will grant permissions required to use AWS Events within the Amazon SageMaker portfolio of products."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AmazonSageMakerServiceCatalogProductsEventsServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AmazonSageMakerServiceCatalogProductsEventsRole"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--AmazonSageMakerServiceCatalogProductsExecutionRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "sagemaker.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "SageMaker role created from the SageMaker AWS Management Console. This role will grant permissions required to use AWS SageMaker within the Amazon SageMaker portfolio of products."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonSageMakerFullAccess"]
  max_session_duration = "3600"
  name                 = "AmazonSageMakerServiceCatalogProductsExecutionRole"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--AmazonSageMakerServiceCatalogProductsFirehoseRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "firehose.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "SageMaker role created from the SageMaker AWS Management Console. This role will grant permissions required to use AWS Firehose within the Amazon SageMaker portfolio of products."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AmazonSageMakerServiceCatalogProductsFirehoseServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AmazonSageMakerServiceCatalogProductsFirehoseRole"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--AmazonSageMakerServiceCatalogProductsGlueRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "glue.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "SageMaker role created from the SageMaker AWS Management Console. This role will grant permissions required to use AWS Glue within the Amazon SageMaker portfolio of products."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AmazonSageMakerServiceCatalogProductsGlueServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AmazonSageMakerServiceCatalogProductsGlueRole"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--AmazonSageMakerServiceCatalogProductsLambdaRole" {
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

  description          = "SageMaker role created from the SageMaker AWS Management Console. This role will grant permissions required to use AWS Lambda within the Amazon SageMaker portfolio of products."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AmazonSageMakerServiceCatalogProductsLambdaServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AmazonSageMakerServiceCatalogProductsLambdaRole"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--AmazonSageMakerServiceCatalogProductsLaunchRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "servicecatalog.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "SageMaker role created from the SageMaker AWS Management Console. This role has the permissions required to launch the Amazon SageMaker portfolio of products from AWS ServiceCatalog."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonSageMakerAdmin-ServiceCatalogProductsServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AmazonSageMakerServiceCatalogProductsLaunchRole"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--AmazonSageMakerServiceCatalogProductsUseRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": [
          "codebuild.amazonaws.com",
          "sagemaker.amazonaws.com",
          "glue.amazonaws.com",
          "codepipeline.amazonaws.com",
          "states.amazonaws.com",
          "firehose.amazonaws.com",
          "cloudformation.amazonaws.com",
          "events.amazonaws.com",
          "apigateway.amazonaws.com",
          "lambda.amazonaws.com"
        ]
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "SageMaker role created from the SageMaker AWS Management Console. This role has the permissions required to use the Amazon SageMaker portfolio of products from AWS ServiceCatalog."
  managed_policy_arns  = ["arn:aws:iam::064592191516:policy/service-role/AmazonSageMakerServiceCatalogProductsUseRole-20230916T105295", "arn:aws:iam::aws:policy/AmazonS3FullAccess"]
  max_session_duration = "3600"
  name                 = "AmazonSageMakerServiceCatalogProductsUseRole"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--AmazonSagemakerCanvasForecastRole-20230916T105232" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "forecast.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AmazonSageMakerCanvasForecastAccess"]
  max_session_duration = "3600"
  name                 = "AmazonSagemakerCanvasForecastRole-20230916T105232"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--StepFunctions-MyStateMachine-w9dekhf9k-role-p2qhxfjbm" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Condition": {
        "ArnLike": {
          "aws:SourceArn": "arn:aws:states:us-east-1:064592191516:stateMachine:*"
        },
        "StringEquals": {
          "aws:SourceAccount": "064592191516"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "states.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::064592191516:policy/service-role/LambdaInvokeScopedAccessPolicy-c2da024e-757a-45ba-ba07-5f2e54493fdd", "arn:aws:iam::064592191516:policy/service-role/S3ListBucketScopedAccessPerBucketPolicy-80b6ba5c-189e-4a51-8e06-bcd981c7cdf4", "arn:aws:iam::064592191516:policy/service-role/StepFunctionsStartExecutionManagementScopedAccessPolicy-03cdcf15-3121-48e4-ba91-a84d2c0ebe62", "arn:aws:iam::064592191516:policy/service-role/XRayAccessPolicy-169f2389-3183-4b01-be7f-2234ce0879ae"]
  max_session_duration = "3600"
  name                 = "StepFunctions-MyStateMachine-w9dekhf9k-role-p2qhxfjbm"
  path                 = "/service-role/"
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
      },
      "Sid": ""
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Lambda functions to call AWS video transcode services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::064592191516:policy/LambdaCloudWatchLogsPolicy", "arn:aws:iam::064592191516:policy/custom-resources-lambda-policy", "arn:aws:iam::aws:policy/AWSElementalMediaConvertFullAccess", "arn:aws:iam::aws:policy/AWSLambdaExecute"]
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

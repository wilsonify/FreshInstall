resource "aws_iam_role" "tfer--AWSReservedSSO_AdministratorAccess_32aaa8ad59c1e0bf" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "sts:AssumeRoleWithSAML",
        "sts:TagSession"
      ],
      "Condition": {
        "StringEquals": {
          "SAML:aud": "https://signin.aws.amazon.com/saml"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::064592191516:saml-provider/AWSSSO_052cddddf72af96f_DO_NOT_DELETE"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AdministratorAccess"]
  max_session_duration = "43200"
  name                 = "AWSReservedSSO_AdministratorAccess_32aaa8ad59c1e0bf"
  path                 = "/aws-reserved/sso.amazonaws.com/"
}

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

resource "aws_iam_role" "tfer--AWSServiceRoleForApplicationAutoScaling_ECSService" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ecs.application-autoscaling.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSApplicationAutoscalingECSServicePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForApplicationAutoScaling_ECSService"
  path                 = "/aws-service-role/ecs.application-autoscaling.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForECS" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ecs.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Role to enable Amazon ECS to manage your cluster."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonECSServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForECS"
  path                 = "/aws-service-role/ecs.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForOrganizations" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "organizations.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Service-linked role used by AWS Organizations to enable integration of other AWS services with Organizations."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSOrganizationsServiceTrustPolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForOrganizations"
  path                 = "/aws-service-role/organizations.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForSSO" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "sso.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Service-linked role used by AWS SSO to manage AWS resources, including IAM roles, policies and SAML IdP on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSSSOServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForSSO"
  path                 = "/aws-service-role/sso.amazonaws.com/"
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
          "cloudformation.amazonaws.com",
          "codepipeline.amazonaws.com",
          "glue.amazonaws.com",
          "firehose.amazonaws.com",
          "states.amazonaws.com",
          "apigateway.amazonaws.com",
          "events.amazonaws.com",
          "sagemaker.amazonaws.com",
          "lambda.amazonaws.com",
          "codebuild.amazonaws.com"
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

resource "aws_iam_role" "tfer--GitHubAction-AssumeRoleWithAction" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRoleWithWebIdentity",
      "Condition": {
        "StringEquals": {
          "token.actions.githubusercontent.com:aud": "sts.amazonaws.com",
          "token.actions.githubusercontent.com:sub": "repo:wilsonify/Machine-Learning-Engineering-on-AWS:ref:refs/heads/main"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::064592191516:oidc-provider/token.actions.githubusercontent.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allow GitHub Actions within wilsonify Machine-Learning-Engineering-on-AWS main "
  managed_policy_arns  = ["arn:aws:iam::064592191516:policy/LambdaInvokePolicy", "arn:aws:iam::064592191516:policy/STSReadPolicy"]
  max_session_duration = "3600"
  name                 = "GitHubAction-AssumeRoleWithAction"
  path                 = "/"
}

resource "aws_iam_role" "tfer--HelloECSTaskExecutionRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ecs.amazonaws.com"
      },
      "Sid": ""
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  description          = "Allows ECS to create and manage AWS resources on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceRole"]
  max_session_duration = "3600"
  name                 = "HelloECSTaskExecutionRole"
  path                 = "/"
}

resource "aws_iam_role" "tfer--LambdaInvokeRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Condition": {},
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::064592191516:root"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::064592191516:policy/LambdaInvokePolicy"]
  max_session_duration = "3600"
  name                 = "LambdaInvokeRole"
  path                 = "/"
}

resource "aws_iam_role" "tfer--MLFlowECSTaskExecutionRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ecs-tasks.amazonaws.com"
      },
      "Sid": ""
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows ECS tasks to call AWS services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonS3FullAccess", "arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"]
  max_session_duration = "3600"
  name                 = "MLFlowECSTaskExecutionRole"
  path                 = "/"
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

resource "aws_iam_role" "tfer--ecsTaskExecutionRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ecs-tasks.amazonaws.com"
      },
      "Sid": ""
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::064592191516:policy/s3-read-write-kaggle-policy", "arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"]
  max_session_duration = "3600"
  name                 = "ecsTaskExecutionRole"
  path                 = "/"
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

resource "aws_iam_role" "tfer--mlflow-tf-s01-create-training-dataset-role-760da69c" {
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

  managed_policy_arns  = ["arn:aws:iam::064592191516:policy/service-role/AWSLambdaBasicExecutionRole-6b591753-05ef-4dbc-91b0-b703957eb94c"]
  max_session_duration = "3600"
  name                 = "mlflow-tf-s01-create-training-dataset-role-760da69c"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--mlflow-tf-s01-create-training-dataset-role-prmds7c1" {
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

  managed_policy_arns  = ["arn:aws:iam::064592191516:policy/service-role/AWSLambdaBasicExecutionRole-dd9f6f39-6e6b-44f4-8ef2-a120239e1c56"]
  max_session_duration = "3600"
  name                 = "mlflow-tf-s01-create-training-dataset-role-prmds7c1"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--mlflow-tf-s02-preprocessing-role-e0quy6vk" {
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

  managed_policy_arns  = ["arn:aws:iam::064592191516:policy/s3-read-write-kaggle-policy", "arn:aws:iam::064592191516:policy/service-role/AWSLambdaBasicExecutionRole-2d65ee2c-a014-46ec-95c9-4ee77c65cf68"]
  max_session_duration = "3600"
  name                 = "mlflow-tf-s02-preprocessing-role-e0quy6vk"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--mlflow-tf-s03-train-role-5hkjz400" {
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

  managed_policy_arns  = ["arn:aws:iam::064592191516:policy/s3-read-write-kaggle-policy", "arn:aws:iam::064592191516:policy/service-role/AWSLambdaBasicExecutionRole-4b3a8738-5bd2-4352-be0a-80ae1660c94d"]
  max_session_duration = "3600"
  name                 = "mlflow-tf-s03-train-role-5hkjz400"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--s01-wine-scrape-lambda-role-budx8fug" {
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

  managed_policy_arns  = ["arn:aws:iam::064592191516:policy/s3-read-write-kaggle-policy", "arn:aws:iam::064592191516:policy/service-role/AWSLambdaBasicExecutionRole-3e18e52f-6449-43ce-968d-548a669808fd", "arn:aws:iam::aws:policy/AmazonSQSFullAccess"]
  max_session_duration = "3600"
  name                 = "s01-wine-scrape-lambda-role-budx8fug"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--terratest-docker-build-role-8rvj0bed" {
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

  managed_policy_arns  = ["arn:aws:iam::064592191516:policy/service-role/AWSLambdaBasicExecutionRole-8f6a3e23-2347-4ee7-8328-8857c7a44b7d"]
  max_session_duration = "3600"
  name                 = "terratest-docker-build-role-8rvj0bed"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--thom-cloudshell-s3-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::064592191516:user/thom"
      },
      "Sid": "Statement1"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "User Thom is allowed to read/write s3 from a cloudshell"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AWSCloudShellFullAccess", "arn:aws:iam::aws:policy/AmazonS3FullAccess"]
  max_session_duration = "3600"
  name                 = "thom-cloudshell-s3-role"
  path                 = "/"
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

resource "aws_iam_role" "tfer--tt-db-role-sd8q9lrf" {
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

  managed_policy_arns  = ["arn:aws:iam::064592191516:policy/service-role/AWSLambdaBasicExecutionRole-4bb6991d-97b8-42fb-a195-06375e892f81"]
  max_session_duration = "3600"
  name                 = "tt-db-role-sd8q9lrf"
  path                 = "/service-role/"
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

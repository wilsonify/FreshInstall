resource "aws_iam_policy" "tfer--AWSLambdaBasicExecutionRole-2d65ee2c-a014-46ec-95c9-4ee77c65cf68" {
  name = "AWSLambdaBasicExecutionRole-2d65ee2c-a014-46ec-95c9-4ee77c65cf68"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "logs:CreateLogGroup",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:064592191516:*"
    },
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:us-east-1:064592191516:log-group:/aws/lambda/mlflow-tf-s02-preprocessing:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--AWSLambdaBasicExecutionRole-3e18e52f-6449-43ce-968d-548a669808fd" {
  name = "AWSLambdaBasicExecutionRole-3e18e52f-6449-43ce-968d-548a669808fd"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "logs:CreateLogGroup",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:064592191516:*"
    },
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:us-east-1:064592191516:log-group:/aws/lambda/s01-wine-scrape-lambda:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--AWSLambdaBasicExecutionRole-4b3a8738-5bd2-4352-be0a-80ae1660c94d" {
  name = "AWSLambdaBasicExecutionRole-4b3a8738-5bd2-4352-be0a-80ae1660c94d"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "logs:CreateLogGroup",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:064592191516:*"
    },
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:us-east-1:064592191516:log-group:/aws/lambda/mlflow-tf-s03-train:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--AWSLambdaBasicExecutionRole-4bb6991d-97b8-42fb-a195-06375e892f81" {
  name = "AWSLambdaBasicExecutionRole-4bb6991d-97b8-42fb-a195-06375e892f81"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "logs:CreateLogGroup",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:064592191516:*"
    },
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:us-east-1:064592191516:log-group:/aws/lambda/tt-db:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--AWSLambdaBasicExecutionRole-6b591753-05ef-4dbc-91b0-b703957eb94c" {
  name = "AWSLambdaBasicExecutionRole-6b591753-05ef-4dbc-91b0-b703957eb94c"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "logs:CreateLogGroup",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:064592191516:*"
    },
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:us-east-1:064592191516:log-group:/aws/lambda/mlflow-tf-s01-create-training-dataset:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--AWSLambdaBasicExecutionRole-8f6a3e23-2347-4ee7-8328-8857c7a44b7d" {
  name = "AWSLambdaBasicExecutionRole-8f6a3e23-2347-4ee7-8328-8857c7a44b7d"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "logs:CreateLogGroup",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:064592191516:*"
    },
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:us-east-1:064592191516:log-group:/aws/lambda/terratest-docker-build:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--AWSLambdaBasicExecutionRole-dd9f6f39-6e6b-44f4-8ef2-a120239e1c56" {
  name = "AWSLambdaBasicExecutionRole-dd9f6f39-6e6b-44f4-8ef2-a120239e1c56"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "logs:CreateLogGroup",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:064592191516:*"
    },
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:us-east-1:064592191516:log-group:/aws/lambda/mlflow-tf-s01-create-training-dataset:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--AmazonSageMaker-ExecutionPolicy-20230916T105234" {
  name = "AmazonSageMaker-ExecutionPolicy-20230916T105234"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:GetObject",
        "s3:PutObject",
        "s3:DeleteObject",
        "s3:ListBucket"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--AmazonSageMakerServiceCatalogProductsUseRole-20230916T105295" {
  name = "AmazonSageMakerServiceCatalogProductsUseRole-20230916T105295"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "cloudformation:CreateChangeSet",
        "cloudformation:CreateStack",
        "cloudformation:DescribeChangeSet",
        "cloudformation:DeleteChangeSet",
        "cloudformation:DeleteStack",
        "cloudformation:DescribeStacks",
        "cloudformation:ExecuteChangeSet",
        "cloudformation:SetStackPolicy",
        "cloudformation:UpdateStack"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:cloudformation:*:*:stack/sagemaker-*"
    },
    {
      "Action": [
        "cloudwatch:PutMetricData"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codebuild:BatchGetBuilds",
        "codebuild:StartBuild"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:codebuild:*:*:project/sagemaker-*",
        "arn:aws:codebuild:*:*:build/sagemaker-*"
      ]
    },
    {
      "Action": [
        "codecommit:CancelUploadArchive",
        "codecommit:GetBranch",
        "codecommit:GetCommit",
        "codecommit:GetUploadArchiveStatus",
        "codecommit:UploadArchive"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:codecommit:*:*:sagemaker-*"
    },
    {
      "Action": [
        "codepipeline:StartPipelineExecution"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:codepipeline:*:*:sagemaker-*"
    },
    {
      "Action": [
        "ec2:DescribeRouteTables"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchGetImage",
        "ecr:Describe*",
        "ecr:GetAuthorizationToken",
        "ecr:GetDownloadUrlForLayer"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "ecr:BatchDeleteImage",
        "ecr:CompleteLayerUpload",
        "ecr:CreateRepository",
        "ecr:DeleteRepository",
        "ecr:InitiateLayerUpload",
        "ecr:PutImage",
        "ecr:UploadLayerPart"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:ecr:*:*:repository/sagemaker-*"
      ]
    },
    {
      "Action": [
        "events:DeleteRule",
        "events:DescribeRule",
        "events:PutRule",
        "events:PutTargets",
        "events:RemoveTargets"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:events:*:*:rule/sagemaker-*"
      ]
    },
    {
      "Action": [
        "firehose:PutRecord",
        "firehose:PutRecordBatch"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:firehose:*:*:deliverystream/sagemaker-*"
    },
    {
      "Action": [
        "glue:BatchCreatePartition",
        "glue:BatchDeletePartition",
        "glue:BatchDeleteTable",
        "glue:BatchDeleteTableVersion",
        "glue:BatchGetPartition",
        "glue:CreateDatabase",
        "glue:CreatePartition",
        "glue:CreateTable",
        "glue:DeletePartition",
        "glue:DeleteTable",
        "glue:DeleteTableVersion",
        "glue:GetDatabase",
        "glue:GetPartition",
        "glue:GetPartitions",
        "glue:GetTable",
        "glue:GetTables",
        "glue:GetTableVersion",
        "glue:GetTableVersions",
        "glue:SearchTables",
        "glue:UpdatePartition",
        "glue:UpdateTable",
        "glue:GetUserDefinedFunctions"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:glue:*:*:catalog",
        "arn:aws:glue:*:*:database/default",
        "arn:aws:glue:*:*:database/global_temp",
        "arn:aws:glue:*:*:database/sagemaker-*",
        "arn:aws:glue:*:*:table/sagemaker-*",
        "arn:aws:glue:*:*:tableVersion/sagemaker-*"
      ]
    },
    {
      "Action": [
        "iam:PassRole"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:iam::*:role/service-role/AmazonSageMakerServiceCatalogProductsUse*"
      ]
    },
    {
      "Action": [
        "lambda:InvokeFunction"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:lambda:*:*:function:sagemaker-*"
      ]
    },
    {
      "Action": [
        "logs:CreateLogDelivery",
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:DeleteLogDelivery",
        "logs:Describe*",
        "logs:GetLogDelivery",
        "logs:GetLogEvents",
        "logs:ListLogDeliveries",
        "logs:PutLogEvents",
        "logs:PutResourcePolicy",
        "logs:UpdateLogDelivery"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "s3:CreateBucket",
        "s3:DeleteBucket",
        "s3:GetBucketAcl",
        "s3:GetBucketCors",
        "s3:GetBucketLocation",
        "s3:ListAllMyBuckets",
        "s3:ListBucket",
        "s3:ListBucketMultipartUploads",
        "s3:PutBucketCors",
        "s3:PutObjectAcl"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::aws-glue-*",
        "arn:aws:s3:::sagemaker-*"
      ]
    },
    {
      "Action": [
        "s3:AbortMultipartUpload",
        "s3:DeleteObject",
        "s3:GetObject",
        "s3:GetObjectVersion",
        "s3:PutObject"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::aws-glue-*",
        "arn:aws:s3:::sagemaker-*"
      ]
    },
    {
      "Action": [
        "sagemaker:*"
      ],
      "Effect": "Allow",
      "NotResource": [
        "arn:aws:sagemaker:*:*:domain/*",
        "arn:aws:sagemaker:*:*:user-profile/*",
        "arn:aws:sagemaker:*:*:app/*",
        "arn:aws:sagemaker:*:*:flow-definition/*"
      ]
    },
    {
      "Action": [
        "states:DescribeExecution",
        "states:DescribeStateMachine",
        "states:DescribeStateMachineForExecution",
        "states:GetExecutionHistory",
        "states:ListExecutions",
        "states:ListTagsForResource",
        "states:StartExecution",
        "states:StopExecution",
        "states:TagResource",
        "states:UntagResource",
        "states:UpdateStateMachine"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:states:*:*:stateMachine:sagemaker-*",
        "arn:aws:states:*:*:execution:sagemaker-*:*"
      ]
    },
    {
      "Action": [
        "states:ListStateMachines"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codestar-connections:UseConnection"
      ],
      "Condition": {
        "StringEqualsIgnoreCase": {
          "aws:ResourceTag/sagemaker": "true"
        }
      },
      "Effect": "Allow",
      "Resource": "arn:aws:codestar-connections:*:*:connection/*"
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

resource "aws_iam_policy" "tfer--LambdaInvokePolicy" {
  name = "LambdaInvokePolicy"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "lambda:InvokeFunction",
      "Effect": "Allow",
      "Resource": "arn:aws:lambda:us-east-1:064592191516:function:*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--LambdaInvokeScopedAccessPolicy-c2da024e-757a-45ba-ba07-5f2e54493fdd" {
  description = "Allow AWS Step Functions to invoke Lambda functions on your behalf"
  name        = "LambdaInvokeScopedAccessPolicy-c2da024e-757a-45ba-ba07-5f2e54493fdd"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "lambda:InvokeFunction"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:lambda:us-east-1:064592191516:function:twentyfour-hour-video-python-transcode-video:*"
      ]
    },
    {
      "Action": [
        "lambda:InvokeFunction"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:lambda:us-east-1:064592191516:function:twentyfour-hour-video-python-transcode-video"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--S3ListBucketScopedAccessPerBucketPolicy-80b6ba5c-189e-4a51-8e06-bcd981c7cdf4" {
  description = "Allow AWS Step Functions to list objects from an S3 bucket on your behalf"
  name        = "S3ListBucketScopedAccessPerBucketPolicy-80b6ba5c-189e-4a51-8e06-bcd981c7cdf4"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:ListBucket"
      ],
      "Condition": {
        "StringLike": {
          "s3:prefix": [
            "uploads/"
          ]
        }
      },
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::064592191516-serverless-video-upload-python"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--STSReadPolicy" {
  name = "STSReadPolicy"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "sts:GetSessionToken",
        "sts:GetFederationToken",
        "sts:GetAccessKeyInfo",
        "sts:GetCallerIdentity",
        "sts:GetServiceBearerToken"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor0"
    },
    {
      "Action": [
        "sts:AssumeRole",
        "sts:AssumeRoleWithWebIdentity"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "Statement1"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--StepFunctionsStartExecutionManagementScopedAccessPolicy-03cdcf15-3121-48e4-ba91-a84d2c0ebe62" {
  description = "Allows AWS Step Functions to start another workflow execution on your behalf."
  name        = "StepFunctionsStartExecutionManagementScopedAccessPolicy-03cdcf15-3121-48e4-ba91-a84d2c0ebe62"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "states:StartExecution"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:states:us-east-1:064592191516:stateMachine:MyStateMachine-w9dekhf9k"
      ]
    },
    {
      "Action": [
        "states:DescribeExecution",
        "states:StopExecution"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "events:PutTargets",
        "events:PutRule",
        "events:DescribeRule"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:events:us-east-1:064592191516:rule/StepFunctionsGetEventsForStepFunctionsExecutionRule"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--XRayAccessPolicy-169f2389-3183-4b01-be7f-2234ce0879ae" {
  description = "Allow AWS Step Functions to call X-Ray daemon on your behalf"
  name        = "XRayAccessPolicy-169f2389-3183-4b01-be7f-2234ce0879ae"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "xray:PutTraceSegments",
        "xray:PutTelemetryRecords",
        "xray:GetSamplingRules",
        "xray:GetSamplingTargets"
      ],
      "Effect": "Allow",
      "Resource": [
        "*"
      ]
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

resource "aws_iam_policy" "tfer--s3-read-write-kaggle-policy" {
  name = "s3-read-write-kaggle-policy"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "s3:ListBucket",
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::064592191516-kaggle"
    },
    {
      "Action": [
        "s3:GetObject",
        "s3:PutObject"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::064592191516-kaggle/*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

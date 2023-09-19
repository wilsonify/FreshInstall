resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForAmazonSageMakerNotebooks_AmazonSageMakerNotebooksServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonSageMakerNotebooksServiceRolePolicy"
  role       = "AWSServiceRoleForAmazonSageMakerNotebooks"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForSupport_AWSSupportServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSSupportServiceRolePolicy"
  role       = "AWSServiceRoleForSupport"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForTrustedAdvisor_AWSTrustedAdvisorServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSTrustedAdvisorServiceRolePolicy"
  role       = "AWSServiceRoleForTrustedAdvisor"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonSageMaker-ExecutionRole-20230916T105234_AmazonSageMaker-ExecutionPolicy-20230916T105234" {
  policy_arn = "arn:aws:iam::064592191516:policy/service-role/AmazonSageMaker-ExecutionPolicy-20230916T105234"
  role       = "AmazonSageMaker-ExecutionRole-20230916T105234"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonSageMaker-ExecutionRole-20230916T105234_AmazonSageMakerCanvasAIServicesAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSageMakerCanvasAIServicesAccess"
  role       = "AmazonSageMaker-ExecutionRole-20230916T105234"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonSageMaker-ExecutionRole-20230916T105234_AmazonSageMakerCanvasFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSageMakerCanvasFullAccess"
  role       = "AmazonSageMaker-ExecutionRole-20230916T105234"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonSageMaker-ExecutionRole-20230916T105234_AmazonSageMakerFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSageMakerFullAccess"
  role       = "AmazonSageMaker-ExecutionRole-20230916T105234"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonSageMakerServiceCatalogProductsApiGatewayRole_AmazonSageMakerServiceCatalogProductsApiGatewayServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonSageMakerServiceCatalogProductsApiGatewayServiceRolePolicy"
  role       = "AmazonSageMakerServiceCatalogProductsApiGatewayRole"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonSageMakerServiceCatalogProductsCloudformationRole_AmazonSageMakerServiceCatalogProductsCloudformationServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonSageMakerServiceCatalogProductsCloudformationServiceRolePolicy"
  role       = "AmazonSageMakerServiceCatalogProductsCloudformationRole"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonSageMakerServiceCatalogProductsCodeBuildRole_AmazonSageMakerServiceCatalogProductsCodeBuildServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSageMakerServiceCatalogProductsCodeBuildServiceRolePolicy"
  role       = "AmazonSageMakerServiceCatalogProductsCodeBuildRole"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonSageMakerServiceCatalogProductsCodePipelineRole_AmazonSageMakerServiceCatalogProductsCodePipelineServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonSageMakerServiceCatalogProductsCodePipelineServiceRolePolicy"
  role       = "AmazonSageMakerServiceCatalogProductsCodePipelineRole"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonSageMakerServiceCatalogProductsEventsRole_AmazonSageMakerServiceCatalogProductsEventsServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonSageMakerServiceCatalogProductsEventsServiceRolePolicy"
  role       = "AmazonSageMakerServiceCatalogProductsEventsRole"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonSageMakerServiceCatalogProductsExecutionRole_AmazonSageMakerFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSageMakerFullAccess"
  role       = "AmazonSageMakerServiceCatalogProductsExecutionRole"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonSageMakerServiceCatalogProductsFirehoseRole_AmazonSageMakerServiceCatalogProductsFirehoseServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonSageMakerServiceCatalogProductsFirehoseServiceRolePolicy"
  role       = "AmazonSageMakerServiceCatalogProductsFirehoseRole"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonSageMakerServiceCatalogProductsGlueRole_AmazonSageMakerServiceCatalogProductsGlueServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonSageMakerServiceCatalogProductsGlueServiceRolePolicy"
  role       = "AmazonSageMakerServiceCatalogProductsGlueRole"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonSageMakerServiceCatalogProductsLambdaRole_AmazonSageMakerServiceCatalogProductsLambdaServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonSageMakerServiceCatalogProductsLambdaServiceRolePolicy"
  role       = "AmazonSageMakerServiceCatalogProductsLambdaRole"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonSageMakerServiceCatalogProductsLaunchRole_AmazonSageMakerAdmin-ServiceCatalogProductsServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSageMakerAdmin-ServiceCatalogProductsServiceRolePolicy"
  role       = "AmazonSageMakerServiceCatalogProductsLaunchRole"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonSageMakerServiceCatalogProductsUseRole_AmazonS3FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  role       = "AmazonSageMakerServiceCatalogProductsUseRole"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonSageMakerServiceCatalogProductsUseRole_AmazonSageMakerServiceCatalogProductsUseRole-20230916T105295" {
  policy_arn = "arn:aws:iam::064592191516:policy/service-role/AmazonSageMakerServiceCatalogProductsUseRole-20230916T105295"
  role       = "AmazonSageMakerServiceCatalogProductsUseRole"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonSagemakerCanvasForecastRole-20230916T105232_AmazonSageMakerCanvasForecastAccess" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonSageMakerCanvasForecastAccess"
  role       = "AmazonSagemakerCanvasForecastRole-20230916T105232"
}

resource "aws_iam_role_policy_attachment" "tfer--StepFunctions-MyStateMachine-w9dekhf9k-role-p2qhxfjbm_LambdaInvokeScopedAccessPolicy-c2da024e-757a-45ba-ba07-5f2e54493fdd" {
  policy_arn = "arn:aws:iam::064592191516:policy/service-role/LambdaInvokeScopedAccessPolicy-c2da024e-757a-45ba-ba07-5f2e54493fdd"
  role       = "StepFunctions-MyStateMachine-w9dekhf9k-role-p2qhxfjbm"
}

resource "aws_iam_role_policy_attachment" "tfer--StepFunctions-MyStateMachine-w9dekhf9k-role-p2qhxfjbm_S3ListBucketScopedAccessPerBucketPolicy-80b6ba5c-189e-4a51-8e06-bcd981c7cdf4" {
  policy_arn = "arn:aws:iam::064592191516:policy/service-role/S3ListBucketScopedAccessPerBucketPolicy-80b6ba5c-189e-4a51-8e06-bcd981c7cdf4"
  role       = "StepFunctions-MyStateMachine-w9dekhf9k-role-p2qhxfjbm"
}

resource "aws_iam_role_policy_attachment" "tfer--StepFunctions-MyStateMachine-w9dekhf9k-role-p2qhxfjbm_StepFunctionsStartExecutionManagementScopedAccessPolicy-03cdcf15-3121-48e4-ba91-a84d2c0ebe62" {
  policy_arn = "arn:aws:iam::064592191516:policy/service-role/StepFunctionsStartExecutionManagementScopedAccessPolicy-03cdcf15-3121-48e4-ba91-a84d2c0ebe62"
  role       = "StepFunctions-MyStateMachine-w9dekhf9k-role-p2qhxfjbm"
}

resource "aws_iam_role_policy_attachment" "tfer--StepFunctions-MyStateMachine-w9dekhf9k-role-p2qhxfjbm_XRayAccessPolicy-169f2389-3183-4b01-be7f-2234ce0879ae" {
  policy_arn = "arn:aws:iam::064592191516:policy/service-role/XRayAccessPolicy-169f2389-3183-4b01-be7f-2234ce0879ae"
  role       = "StepFunctions-MyStateMachine-w9dekhf9k-role-p2qhxfjbm"
}

resource "aws_iam_role_policy_attachment" "tfer--media-convert-role_AmazonAPIGatewayInvokeFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonAPIGatewayInvokeFullAccess"
  role       = "media-convert-role"
}

resource "aws_iam_role_policy_attachment" "tfer--media-convert-role_AmazonS3FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  role       = "media-convert-role"
}

resource "aws_iam_role_policy_attachment" "tfer--transcode-video_AWSElementalMediaConvertFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSElementalMediaConvertFullAccess"
  role       = "transcode-video"
}

resource "aws_iam_role_policy_attachment" "tfer--transcode-video_AWSLambdaExecute" {
  policy_arn = "arn:aws:iam::aws:policy/AWSLambdaExecute"
  role       = "transcode-video"
}

resource "aws_iam_role_policy_attachment" "tfer--transcode-video_LambdaCloudWatchLogsPolicy" {
  policy_arn = "arn:aws:iam::064592191516:policy/LambdaCloudWatchLogsPolicy"
  role       = "transcode-video"
}

resource "aws_iam_role_policy_attachment" "tfer--transcode-video_custom-resources-lambda-policy" {
  policy_arn = "arn:aws:iam::064592191516:policy/custom-resources-lambda-policy"
  role       = "transcode-video"
}

resource "aws_iam_role_policy_attachment" "tfer--twentyfour-hour-video-python-IamRoleCustomResources_custom-resources-lambda-policy" {
  policy_arn = "arn:aws:iam::064592191516:policy/custom-resources-lambda-policy"
  role       = "twentyfour-hour-video-python-IamRoleCustomResources"
}

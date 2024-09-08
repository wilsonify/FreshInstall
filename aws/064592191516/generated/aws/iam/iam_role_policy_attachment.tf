resource "aws_iam_role_policy_attachment" "tfer--AWSReservedSSO_AdministratorAccess_32aaa8ad59c1e0bf_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = "AWSReservedSSO_AdministratorAccess_32aaa8ad59c1e0bf"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForAmazonSageMakerNotebooks_AmazonSageMakerNotebooksServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonSageMakerNotebooksServiceRolePolicy"
  role       = "AWSServiceRoleForAmazonSageMakerNotebooks"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForApplicationAutoScaling_ECSService_AWSApplicationAutoscalingECSServicePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSApplicationAutoscalingECSServicePolicy"
  role       = "AWSServiceRoleForApplicationAutoScaling_ECSService"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForECS_AmazonECSServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonECSServiceRolePolicy"
  role       = "AWSServiceRoleForECS"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForOrganizations_AWSOrganizationsServiceTrustPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSOrganizationsServiceTrustPolicy"
  role       = "AWSServiceRoleForOrganizations"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForSSO_AWSSSOServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSSSOServiceRolePolicy"
  role       = "AWSServiceRoleForSSO"
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

resource "aws_iam_role_policy_attachment" "tfer--GitHubAction-AssumeRoleWithAction_LambdaInvokePolicy" {
  policy_arn = "arn:aws:iam::064592191516:policy/LambdaInvokePolicy"
  role       = "GitHubAction-AssumeRoleWithAction"
}

resource "aws_iam_role_policy_attachment" "tfer--GitHubAction-AssumeRoleWithAction_STSReadPolicy" {
  policy_arn = "arn:aws:iam::064592191516:policy/STSReadPolicy"
  role       = "GitHubAction-AssumeRoleWithAction"
}

resource "aws_iam_role_policy_attachment" "tfer--HelloECSTaskExecutionRole_AmazonEC2ContainerServiceRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceRole"
  role       = "HelloECSTaskExecutionRole"
}

resource "aws_iam_role_policy_attachment" "tfer--LambdaInvokeRole_LambdaInvokePolicy" {
  policy_arn = "arn:aws:iam::064592191516:policy/LambdaInvokePolicy"
  role       = "LambdaInvokeRole"
}

resource "aws_iam_role_policy_attachment" "tfer--MLFlowECSTaskExecutionRole_AmazonECSTaskExecutionRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"
  role       = "MLFlowECSTaskExecutionRole"
}

resource "aws_iam_role_policy_attachment" "tfer--MLFlowECSTaskExecutionRole_AmazonS3FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  role       = "MLFlowECSTaskExecutionRole"
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

resource "aws_iam_role_policy_attachment" "tfer--ecsTaskExecutionRole_AmazonECSTaskExecutionRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"
  role       = "ecsTaskExecutionRole"
}

resource "aws_iam_role_policy_attachment" "tfer--ecsTaskExecutionRole_s3-read-write-kaggle-policy" {
  policy_arn = "arn:aws:iam::064592191516:policy/s3-read-write-kaggle-policy"
  role       = "ecsTaskExecutionRole"
}

resource "aws_iam_role_policy_attachment" "tfer--hurricane-s01-create-dataset-role-n73r8j9k_AWSLambdaBasicExecutionRole-5c0a40ad-9cc5-487b-bde8-4abb2bc5143e" {
  policy_arn = "arn:aws:iam::064592191516:policy/service-role/AWSLambdaBasicExecutionRole-5c0a40ad-9cc5-487b-bde8-4abb2bc5143e"
  role       = "hurricane-s01-create-dataset-role-n73r8j9k"
}

resource "aws_iam_role_policy_attachment" "tfer--hurricane-s01-create-dataset-role-n73r8j9k_AWSLambdaSQSQueueDestinationExecutionRole-5d780293-c043-489f-9aa9-f4cc4d850f87" {
  policy_arn = "arn:aws:iam::064592191516:policy/service-role/AWSLambdaSQSQueueDestinationExecutionRole-5d780293-c043-489f-9aa9-f4cc4d850f87"
  role       = "hurricane-s01-create-dataset-role-n73r8j9k"
}

resource "aws_iam_role_policy_attachment" "tfer--hurricane-s01-create-dataset-role-n73r8j9k_AWSLambdaSQSQueueDestinationExecutionRole-77eb785d-8e32-4a4a-bb13-00cdb3a4f374" {
  policy_arn = "arn:aws:iam::064592191516:policy/service-role/AWSLambdaSQSQueueDestinationExecutionRole-77eb785d-8e32-4a4a-bb13-00cdb3a4f374"
  role       = "hurricane-s01-create-dataset-role-n73r8j9k"
}

resource "aws_iam_role_policy_attachment" "tfer--hurricane-s01-create-dataset-role-n73r8j9k_AmazonSQSFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSQSFullAccess"
  role       = "hurricane-s01-create-dataset-role-n73r8j9k"
}

resource "aws_iam_role_policy_attachment" "tfer--hurricane-s01-create-dataset-role-n73r8j9k_s3-read-write-kaggle-policy" {
  policy_arn = "arn:aws:iam::064592191516:policy/s3-read-write-kaggle-policy"
  role       = "hurricane-s01-create-dataset-role-n73r8j9k"
}

resource "aws_iam_role_policy_attachment" "tfer--media-convert-role_AmazonAPIGatewayInvokeFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonAPIGatewayInvokeFullAccess"
  role       = "media-convert-role"
}

resource "aws_iam_role_policy_attachment" "tfer--media-convert-role_AmazonS3FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  role       = "media-convert-role"
}

resource "aws_iam_role_policy_attachment" "tfer--mlflow-tf-s01-create-training-dataset-role-760da69c_AWSLambdaBasicExecutionRole-6b591753-05ef-4dbc-91b0-b703957eb94c" {
  policy_arn = "arn:aws:iam::064592191516:policy/service-role/AWSLambdaBasicExecutionRole-6b591753-05ef-4dbc-91b0-b703957eb94c"
  role       = "mlflow-tf-s01-create-training-dataset-role-760da69c"
}

resource "aws_iam_role_policy_attachment" "tfer--mlflow-tf-s01-create-training-dataset-role-prmds7c1_AWSLambdaBasicExecutionRole-dd9f6f39-6e6b-44f4-8ef2-a120239e1c56" {
  policy_arn = "arn:aws:iam::064592191516:policy/service-role/AWSLambdaBasicExecutionRole-dd9f6f39-6e6b-44f4-8ef2-a120239e1c56"
  role       = "mlflow-tf-s01-create-training-dataset-role-prmds7c1"
}

resource "aws_iam_role_policy_attachment" "tfer--mlflow-tf-s02-preprocessing-role-e0quy6vk_AWSLambdaBasicExecutionRole-2d65ee2c-a014-46ec-95c9-4ee77c65cf68" {
  policy_arn = "arn:aws:iam::064592191516:policy/service-role/AWSLambdaBasicExecutionRole-2d65ee2c-a014-46ec-95c9-4ee77c65cf68"
  role       = "mlflow-tf-s02-preprocessing-role-e0quy6vk"
}

resource "aws_iam_role_policy_attachment" "tfer--mlflow-tf-s02-preprocessing-role-e0quy6vk_s3-read-write-kaggle-policy" {
  policy_arn = "arn:aws:iam::064592191516:policy/s3-read-write-kaggle-policy"
  role       = "mlflow-tf-s02-preprocessing-role-e0quy6vk"
}

resource "aws_iam_role_policy_attachment" "tfer--mlflow-tf-s03-train-role-5hkjz400_AWSLambdaBasicExecutionRole-4b3a8738-5bd2-4352-be0a-80ae1660c94d" {
  policy_arn = "arn:aws:iam::064592191516:policy/service-role/AWSLambdaBasicExecutionRole-4b3a8738-5bd2-4352-be0a-80ae1660c94d"
  role       = "mlflow-tf-s03-train-role-5hkjz400"
}

resource "aws_iam_role_policy_attachment" "tfer--mlflow-tf-s03-train-role-5hkjz400_s3-read-write-kaggle-policy" {
  policy_arn = "arn:aws:iam::064592191516:policy/s3-read-write-kaggle-policy"
  role       = "mlflow-tf-s03-train-role-5hkjz400"
}

resource "aws_iam_role_policy_attachment" "tfer--s01-wine-scrape-lambda-role-budx8fug_AWSLambdaBasicExecutionRole-3e18e52f-6449-43ce-968d-548a669808fd" {
  policy_arn = "arn:aws:iam::064592191516:policy/service-role/AWSLambdaBasicExecutionRole-3e18e52f-6449-43ce-968d-548a669808fd"
  role       = "s01-wine-scrape-lambda-role-budx8fug"
}

resource "aws_iam_role_policy_attachment" "tfer--s01-wine-scrape-lambda-role-budx8fug_AmazonSQSFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSQSFullAccess"
  role       = "s01-wine-scrape-lambda-role-budx8fug"
}

resource "aws_iam_role_policy_attachment" "tfer--s01-wine-scrape-lambda-role-budx8fug_s3-read-write-kaggle-policy" {
  policy_arn = "arn:aws:iam::064592191516:policy/s3-read-write-kaggle-policy"
  role       = "s01-wine-scrape-lambda-role-budx8fug"
}

resource "aws_iam_role_policy_attachment" "tfer--terratest-docker-build-role-8rvj0bed_AWSLambdaBasicExecutionRole-8f6a3e23-2347-4ee7-8328-8857c7a44b7d" {
  policy_arn = "arn:aws:iam::064592191516:policy/service-role/AWSLambdaBasicExecutionRole-8f6a3e23-2347-4ee7-8328-8857c7a44b7d"
  role       = "terratest-docker-build-role-8rvj0bed"
}

resource "aws_iam_role_policy_attachment" "tfer--thom-cloudshell-s3-role_AWSCloudShellFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSCloudShellFullAccess"
  role       = "thom-cloudshell-s3-role"
}

resource "aws_iam_role_policy_attachment" "tfer--thom-cloudshell-s3-role_AmazonS3FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  role       = "thom-cloudshell-s3-role"
}

resource "aws_iam_role_policy_attachment" "tfer--tt-db-role-sd8q9lrf_AWSLambdaBasicExecutionRole-4bb6991d-97b8-42fb-a195-06375e892f81" {
  policy_arn = "arn:aws:iam::064592191516:policy/service-role/AWSLambdaBasicExecutionRole-4bb6991d-97b8-42fb-a195-06375e892f81"
  role       = "tt-db-role-sd8q9lrf"
}

resource "aws_iam_role_policy_attachment" "tfer--twentyfour-hour-video-python-IamRoleCustomResources_custom-resources-lambda-policy" {
  policy_arn = "arn:aws:iam::064592191516:policy/custom-resources-lambda-policy"
  role       = "twentyfour-hour-video-python-IamRoleCustomResources"
}

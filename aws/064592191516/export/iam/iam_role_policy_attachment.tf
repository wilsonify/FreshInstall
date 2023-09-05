resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForSupport_AWSSupportServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSSupportServiceRolePolicy"
  role       = "AWSServiceRoleForSupport"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForTrustedAdvisor_AWSTrustedAdvisorServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSTrustedAdvisorServiceRolePolicy"
  role       = "AWSServiceRoleForTrustedAdvisor"
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

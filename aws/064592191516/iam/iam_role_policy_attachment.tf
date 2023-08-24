resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForSupport_AWSSupportServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSSupportServiceRolePolicy"
  role       = "AWSServiceRoleForSupport"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForTrustedAdvisor_AWSTrustedAdvisorServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSTrustedAdvisorServiceRolePolicy"
  role       = "AWSServiceRoleForTrustedAdvisor"
}

resource "aws_iam_role_policy_attachment" "tfer--transcode-video_AWSElementalMediaConvertFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSElementalMediaConvertFullAccess"
  role       = "transcode-video"
}

resource "aws_iam_role_policy_attachment" "tfer--transcode-video_AWSLambdaExecute" {
  policy_arn = "arn:aws:iam::aws:policy/AWSLambdaExecute"
  role       = "transcode-video"
}

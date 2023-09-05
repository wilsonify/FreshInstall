resource "aws_ecr_repository_policy" "tfer--transcode_video_python" {
  policy = data.aws_iam_policy_document.ecr-transcode-video-python-policy-doc.json
  repository = "transcode_video_python"
}


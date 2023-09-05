data "aws_iam_policy_document" "serverless-video-transcode-sqs-try-policy-doc" {
  statement {
    sid       = "__owner_statement"
    effect    = "Allow"
    resources = ["arn:aws:sqs:us-east-1:064592191516:serverless-video-transcode-sqs-try"]
    actions   = ["SQS:*"]

    principals {
      type        = "AWS"
      identifiers = ["arn:aws:iam::064592191516:root"]
    }
  }

  statement {
    sid       = "__sender_statement"
    effect    = "Allow"
    resources = ["arn:aws:sqs:us-east-1:064592191516:serverless-video-transcode-sqs-try"]
    actions   = ["SQS:SendMessage"]

    principals {
      type        = "AWS"
      identifiers = ["arn:aws:iam::064592191516:role/twentyfour-hour-video-python-IamRoleCustomResources"]
    }
  }

  statement {
    sid       = "__receiver_statement"
    effect    = "Allow"
    resources = ["arn:aws:sqs:us-east-1:064592191516:serverless-video-transcode-sqs-try"]

    actions = [
      "SQS:ChangeMessageVisibility",
      "SQS:DeleteMessage",
      "SQS:ReceiveMessage",
    ]

    principals {
      type        = "AWS"
      identifiers = ["arn:aws:iam::064592191516:role/twentyfour-hour-video-python-IamRoleCustomResources"]
    }
  }
}

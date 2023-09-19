resource "aws_ecr_repository_policy" "tfer--s01-scrape" {
  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:SetRepositoryPolicy",
        "ecr:GetRepositoryPolicy",
        "ecr:GetDownloadUrlForLayer",
        "ecr:DeleteRepositoryPolicy",
        "ecr:BatchGetImage"
      ],
      "Condition": {
        "StringLike": {
          "aws:sourceArn": "arn:aws:lambda:us-east-1:064592191516:function:*"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Sid": "LambdaECRImageRetrievalPolicy"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  repository = "s01-scrape"
}

resource "aws_ecr_repository_policy" "tfer--s02-create-dataset" {
  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:SetRepositoryPolicy",
        "ecr:GetRepositoryPolicy",
        "ecr:GetDownloadUrlForLayer",
        "ecr:DeleteRepositoryPolicy",
        "ecr:BatchGetImage"
      ],
      "Condition": {
        "StringLike": {
          "aws:sourceArn": "arn:aws:lambda:us-east-1:064592191516:function:*"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Sid": "LambdaECRImageRetrievalPolicy"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  repository = "s02-create-dataset"
}

resource "aws_ecr_repository_policy" "tfer--s03-fit" {
  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:SetRepositoryPolicy",
        "ecr:GetRepositoryPolicy",
        "ecr:GetDownloadUrlForLayer",
        "ecr:DeleteRepositoryPolicy",
        "ecr:BatchGetImage"
      ],
      "Condition": {
        "StringLike": {
          "aws:sourceArn": "arn:aws:lambda:us-east-1:064592191516:function:*"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Sid": "LambdaECRImageRetrievalPolicy"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  repository = "s03-fit"
}

resource "aws_ecr_repository_policy" "tfer--s04-predict" {
  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:SetRepositoryPolicy",
        "ecr:GetRepositoryPolicy",
        "ecr:GetDownloadUrlForLayer",
        "ecr:DeleteRepositoryPolicy",
        "ecr:BatchGetImage"
      ],
      "Condition": {
        "StringLike": {
          "aws:sourceArn": "arn:aws:lambda:us-east-1:064592191516:function:*"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Sid": "LambdaECRImageRetrievalPolicy"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  repository = "s04-predict"
}

resource "aws_ecr_repository_policy" "tfer--s05-score" {
  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:SetRepositoryPolicy",
        "ecr:GetRepositoryPolicy",
        "ecr:GetDownloadUrlForLayer",
        "ecr:DeleteRepositoryPolicy",
        "ecr:BatchGetImage"
      ],
      "Condition": {
        "StringLike": {
          "aws:sourceArn": "arn:aws:lambda:us-east-1:064592191516:function:*"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Sid": "LambdaECRImageRetrievalPolicy"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  repository = "s05-score"
}

resource "aws_ecr_repository_policy" "tfer--transcode_video_python" {
  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:BatchGetImage",
        "ecr:GetDownloadUrlForLayer",
        "ecr:SetRepositoryPolicy",
        "ecr:DeleteRepositoryPolicy",
        "ecr:GetRepositoryPolicy"
      ],
      "Condition": {
        "StringLike": {
          "aws:sourceArn": "arn:aws:lambda:us-east-1:064592191516:function:*"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Sid": "LambdaECRImageRetrievalPolicy"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  repository = "transcode_video_python"
}

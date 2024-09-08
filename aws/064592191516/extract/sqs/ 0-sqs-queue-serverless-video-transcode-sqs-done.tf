resource "aws_sqs_queue" "tfer--serverless-video-transcode-sqs-done" {
  content_based_deduplication       = "false"
  delay_seconds                     = "0"
  fifo_queue                        = "false"
  kms_data_key_reuse_period_seconds = "300"
  kms_master_key_id                 = "alias/aws/sqs"
  max_message_size                  = "262144"
  message_retention_seconds         = "345600"
  name                              = "serverless-video-transcode-sqs-done"

  policy = <<POLICY
{
  "Id": "__default_policy_ID",
  "Statement": [
    {
      "Action": "SQS:*",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::064592191516:root"
      },
      "Resource": "arn:aws:sqs:us-east-1:064592191516:serverless-video-transcode-sqs-done",
      "Sid": "__owner_statement"
    },
    {
      "Action": "SQS:SendMessage",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::064592191516:role/twentyfour-hour-video-python-IamRoleCustomResources"
      },
      "Resource": "arn:aws:sqs:us-east-1:064592191516:serverless-video-transcode-sqs-done",
      "Sid": "__sender_statement"
    },
    {
      "Action": [
        "SQS:ChangeMessageVisibility",
        "SQS:DeleteMessage",
        "SQS:ReceiveMessage"
      ],
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::064592191516:role/twentyfour-hour-video-python-IamRoleCustomResources"
      },
      "Resource": "arn:aws:sqs:us-east-1:064592191516:serverless-video-transcode-sqs-done",
      "Sid": "__receiver_statement"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  receive_wait_time_seconds  = "0"
  redrive_policy             = "{\"deadLetterTargetArn\":\"arn:aws:sqs:us-east-1:064592191516:serverless-video-transcode-sqs-fail\",\"maxReceiveCount\":10}"
  sqs_managed_sse_enabled    = "false"
  visibility_timeout_seconds = "30"
}

resource "aws_sqs_queue" "tfer--serverless-video-transcode-sqs-done" {
  content_based_deduplication       = "false"
  delay_seconds                     = "0"
  fifo_queue                        = "false"
  kms_data_key_reuse_period_seconds = "300"
  kms_master_key_id                 = "alias/aws/sqs"
  max_message_size                  = "262144"
  message_retention_seconds         = "345600"
  name                              = "serverless-video-transcode-sqs-done"

  policy = <<POLICY
{
  "Id": "__default_policy_ID",
  "Statement": [
    {
      "Action": "SQS:*",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::064592191516:root"
      },
      "Resource": "arn:aws:sqs:us-east-1:064592191516:serverless-video-transcode-sqs-done",
      "Sid": "__owner_statement"
    },
    {
      "Action": "SQS:SendMessage",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::064592191516:role/twentyfour-hour-video-python-IamRoleCustomResources"
      },
      "Resource": "arn:aws:sqs:us-east-1:064592191516:serverless-video-transcode-sqs-done",
      "Sid": "__sender_statement"
    },
    {
      "Action": [
        "SQS:ChangeMessageVisibility",
        "SQS:DeleteMessage",
        "SQS:ReceiveMessage"
      ],
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::064592191516:role/twentyfour-hour-video-python-IamRoleCustomResources"
      },
      "Resource": "arn:aws:sqs:us-east-1:064592191516:serverless-video-transcode-sqs-done",
      "Sid": "__receiver_statement"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  receive_wait_time_seconds  = "0"
  redrive_policy             = "{\"deadLetterTargetArn\":\"arn:aws:sqs:us-east-1:064592191516:serverless-video-transcode-sqs-fail\",\"maxReceiveCount\":10}"
  sqs_managed_sse_enabled    = "false"
  visibility_timeout_seconds = "30"
}

resource "aws_sqs_queue" "tfer--serverless-video-transcode-sqs-done" {
  content_based_deduplication       = "false"
  delay_seconds                     = "0"
  fifo_queue                        = "false"
  kms_data_key_reuse_period_seconds = "300"
  kms_master_key_id                 = "alias/aws/sqs"
  max_message_size                  = "262144"
  message_retention_seconds         = "345600"
  name                              = "serverless-video-transcode-sqs-done"

  policy = <<POLICY
{
  "Id": "__default_policy_ID",
  "Statement": [
    {
      "Action": "SQS:*",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::064592191516:root"
      },
      "Resource": "arn:aws:sqs:us-east-1:064592191516:serverless-video-transcode-sqs-done",
      "Sid": "__owner_statement"
    },
    {
      "Action": "SQS:SendMessage",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::064592191516:role/twentyfour-hour-video-python-IamRoleCustomResources"
      },
      "Resource": "arn:aws:sqs:us-east-1:064592191516:serverless-video-transcode-sqs-done",
      "Sid": "__sender_statement"
    },
    {
      "Action": [
        "SQS:ChangeMessageVisibility",
        "SQS:DeleteMessage",
        "SQS:ReceiveMessage"
      ],
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::064592191516:role/twentyfour-hour-video-python-IamRoleCustomResources"
      },
      "Resource": "arn:aws:sqs:us-east-1:064592191516:serverless-video-transcode-sqs-done",
      "Sid": "__receiver_statement"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  receive_wait_time_seconds  = "0"
  redrive_policy             = "{\"deadLetterTargetArn\":\"arn:aws:sqs:us-east-1:064592191516:serverless-video-transcode-sqs-fail\",\"maxReceiveCount\":10}"
  sqs_managed_sse_enabled    = "false"
  visibility_timeout_seconds = "30"
}

resource "aws_sqs_queue" "tfer--serverless-video-transcode-sqs-done" {
  content_based_deduplication       = "false"
  delay_seconds                     = "0"
  fifo_queue                        = "false"
  kms_data_key_reuse_period_seconds = "300"
  kms_master_key_id                 = "alias/aws/sqs"
  max_message_size                  = "262144"
  message_retention_seconds         = "345600"
  name                              = "serverless-video-transcode-sqs-done"

  policy = <<POLICY
{
  "Id": "__default_policy_ID",
  "Statement": [
    {
      "Action": "SQS:*",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::064592191516:root"
      },
      "Resource": "arn:aws:sqs:us-east-1:064592191516:serverless-video-transcode-sqs-done",
      "Sid": "__owner_statement"
    },
    {
      "Action": "SQS:SendMessage",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::064592191516:role/twentyfour-hour-video-python-IamRoleCustomResources"
      },
      "Resource": "arn:aws:sqs:us-east-1:064592191516:serverless-video-transcode-sqs-done",
      "Sid": "__sender_statement"
    },
    {
      "Action": [
        "SQS:ChangeMessageVisibility",
        "SQS:DeleteMessage",
        "SQS:ReceiveMessage"
      ],
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::064592191516:role/twentyfour-hour-video-python-IamRoleCustomResources"
      },
      "Resource": "arn:aws:sqs:us-east-1:064592191516:serverless-video-transcode-sqs-done",
      "Sid": "__receiver_statement"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  receive_wait_time_seconds  = "0"
  redrive_policy             = "{\"deadLetterTargetArn\":\"arn:aws:sqs:us-east-1:064592191516:serverless-video-transcode-sqs-fail\",\"maxReceiveCount\":10}"
  sqs_managed_sse_enabled    = "false"
  visibility_timeout_seconds = "30"
}


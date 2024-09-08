resource "aws_sqs_queue" "tfer--hurricane-done" {
  content_based_deduplication       = "false"
  delay_seconds                     = "0"
  fifo_queue                        = "false"
  kms_data_key_reuse_period_seconds = "300"
  max_message_size                  = "262144"
  message_retention_seconds         = "345600"
  name                              = "hurricane-done"

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
      "Resource": "arn:aws:sqs:us-east-1:064592191516:hurricane-done",
      "Sid": "__owner_statement"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  receive_wait_time_seconds  = "0"
  sqs_managed_sse_enabled    = "true"
  visibility_timeout_seconds = "30"
}

resource "aws_sqs_queue" "tfer--hurricane-fail" {
  content_based_deduplication       = "false"
  delay_seconds                     = "0"
  fifo_queue                        = "false"
  kms_data_key_reuse_period_seconds = "300"
  max_message_size                  = "262144"
  message_retention_seconds         = "345600"
  name                              = "hurricane-fail"

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
      "Resource": "arn:aws:sqs:us-east-1:064592191516:hurricane-fail",
      "Sid": "__owner_statement"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  receive_wait_time_seconds  = "0"
  redrive_policy             = "{\"deadLetterTargetArn\":\"arn:aws:sqs:us-east-1:064592191516:hurricane-try\",\"maxReceiveCount\":10}"
  sqs_managed_sse_enabled    = "true"
  visibility_timeout_seconds = "30"
}

resource "aws_sqs_queue" "tfer--hurricane-try" {
  content_based_deduplication       = "false"
  delay_seconds                     = "0"
  fifo_queue                        = "false"
  kms_data_key_reuse_period_seconds = "300"
  max_message_size                  = "262144"
  message_retention_seconds         = "345600"
  name                              = "hurricane-try"

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
      "Resource": "arn:aws:sqs:us-east-1:064592191516:hurricane-try",
      "Sid": "__owner_statement"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  receive_wait_time_seconds  = "0"
  sqs_managed_sse_enabled    = "true"
  visibility_timeout_seconds = "200"
}

resource "aws_sqs_queue" "tfer--wine-sqs-done" {
  content_based_deduplication       = "false"
  delay_seconds                     = "0"
  fifo_queue                        = "false"
  kms_data_key_reuse_period_seconds = "300"
  max_message_size                  = "262144"
  message_retention_seconds         = "345600"
  name                              = "wine-sqs-done"

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
      "Resource": "arn:aws:sqs:us-east-1:064592191516:wine-sqs-done",
      "Sid": "__owner_statement"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  receive_wait_time_seconds  = "0"
  sqs_managed_sse_enabled    = "true"
  visibility_timeout_seconds = "30"
}

resource "aws_sqs_queue" "tfer--wine-sqs-fail" {
  content_based_deduplication       = "false"
  delay_seconds                     = "0"
  fifo_queue                        = "false"
  kms_data_key_reuse_period_seconds = "300"
  max_message_size                  = "262144"
  message_retention_seconds         = "345600"
  name                              = "wine-sqs-fail"

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
      "Resource": "arn:aws:sqs:us-east-1:064592191516:wine-sqs-fail",
      "Sid": "__owner_statement"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  receive_wait_time_seconds  = "0"
  redrive_allow_policy       = "{\"redrivePermission\":\"byQueue\",\"sourceQueueArns\":[\"arn:aws:sqs:us-east-1:064592191516:wine-sqs-try\"]}"
  sqs_managed_sse_enabled    = "true"
  visibility_timeout_seconds = "30"
}

resource "aws_sqs_queue" "tfer--wine-sqs-try" {
  content_based_deduplication       = "false"
  delay_seconds                     = "0"
  fifo_queue                        = "false"
  kms_data_key_reuse_period_seconds = "300"
  max_message_size                  = "262144"
  message_retention_seconds         = "345600"
  name                              = "wine-sqs-try"

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
      "Resource": "arn:aws:sqs:us-east-1:064592191516:wine-sqs-try",
      "Sid": "__owner_statement"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  receive_wait_time_seconds  = "0"
  redrive_policy             = "{\"deadLetterTargetArn\":\"arn:aws:sqs:us-east-1:064592191516:wine-sqs-fail\",\"maxReceiveCount\":10}"
  sqs_managed_sse_enabled    = "true"
  visibility_timeout_seconds = "30"
}

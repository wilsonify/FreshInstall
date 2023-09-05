resource "aws_sqs_queue" "tfer--serverless-video-transcode-sqs-try" {
  content_based_deduplication       = "false"
  delay_seconds                     = "0"
  fifo_queue                        = "false"
  kms_data_key_reuse_period_seconds = "300"
  kms_master_key_id                 = "alias/aws/sqs"
  max_message_size                  = "262144"
  message_retention_seconds         = "345600"
  name                              = "serverless-video-transcode-sqs-try"
  policy = data.aws_iam_policy_document.serverless-video-transcode-sqs-try-policy-doc.json
  receive_wait_time_seconds  = "0"
  redrive_policy             = "{\"deadLetterTargetArn\":\"arn:aws:sqs:us-east-1:064592191516:serverless-video-transcode-sqs-fail\",\"maxReceiveCount\":10}"
  sqs_managed_sse_enabled    = "false"
  visibility_timeout_seconds = "30"
}


resource "aws_lambda_event_source_mapping" "tfer--c615b9fb-c958-457d-bd6b-c3d489c8ccdb" {
  batch_size                         = "1"
  bisect_batch_on_function_error     = "false"
  enabled                            = "true"
  event_source_arn                   = "arn:aws:sqs:us-east-1:064592191516:wine-sqs-try"
  function_name                      = "arn:aws:lambda:us-east-1:064592191516:function:s01-wine-scrape-lambda"
  maximum_batching_window_in_seconds = "0"
  maximum_record_age_in_seconds      = "0"
  maximum_retry_attempts             = "0"
  parallelization_factor             = "0"
  tumbling_window_in_seconds         = "0"
}

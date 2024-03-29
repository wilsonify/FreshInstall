resource "aws_lambda_function_event_invoke_config" "tfer--feic_arn-003A-aws-003A-lambda-003A-us-east-1-003A-064592191516-003A-function-003A-s01-wine-scrape-lambda-003A--0024-LATEST" {
  destination_config {
    on_failure {
      destination = "arn:aws:sqs:us-east-1:064592191516:wine-sqs-fail"
    }

    on_success {
      destination = "arn:aws:sqs:us-east-1:064592191516:wine-sqs-done"
    }
  }

  function_name          = "arn:aws:lambda:us-east-1:064592191516:function:s01-wine-scrape-lambda"
  maximum_retry_attempts = "0"
}

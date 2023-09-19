resource "aws_sfn_state_machine" "tfer--MyStateMachine-w9dekhf9k" {
  definition = "{\n  \"Comment\": \"A description of my state machine\",\n  \"StartAt\": \"S3 object keys\",\n  \"States\": {\n    \"S3 object keys\": {\n      \"Type\": \"Map\",\n      \"ItemProcessor\": {\n        \"ProcessorConfig\": {\n          \"Mode\": \"DISTRIBUTED\",\n          \"ExecutionType\": \"STANDARD\"\n        },\n        \"StartAt\": \"Lambda Invoke\",\n        \"States\": {\n          \"Lambda Invoke\": {\n            \"Type\": \"Task\",\n            \"Resource\": \"arn:aws:states:::lambda:invoke\",\n            \"OutputPath\": \"$.Payload\",\n            \"Parameters\": {\n              \"Payload.$\": \"$\",\n              \"FunctionName\": \"arn:aws:lambda:us-east-1:064592191516:function:twentyfour-hour-video-python-transcode-video:$LATEST\"\n            },\n            \"Retry\": [\n              {\n                \"ErrorEquals\": [\n                  \"Lambda.ServiceException\",\n                  \"Lambda.AWSLambdaException\",\n                  \"Lambda.SdkClientException\",\n                  \"Lambda.TooManyRequestsException\"\n                ],\n                \"IntervalSeconds\": 1,\n                \"MaxAttempts\": 3,\n                \"BackoffRate\": 2\n              }\n            ],\n            \"End\": true\n          }\n        }\n      },\n      \"ItemReader\": {\n        \"Resource\": \"arn:aws:states:::s3:listObjectsV2\",\n        \"Parameters\": {\n          \"Bucket\": \"064592191516-serverless-video-upload-python\",\n          \"Prefix\": \"uploads/\"\n        }\n      },\n      \"MaxConcurrency\": 1000,\n      \"Label\": \"S3objectkeys\",\n      \"End\": true\n    }\n  }\n}"

  logging_configuration {
    include_execution_data = "false"
    level                  = "OFF"
  }

  name     = "MyStateMachine-w9dekhf9k"
  role_arn = "arn:aws:iam::064592191516:role/service-role/StepFunctions-MyStateMachine-w9dekhf9k-role-p2qhxfjbm"

  tracing_configuration {
    enabled = "false"
  }

  type = "STANDARD"
}

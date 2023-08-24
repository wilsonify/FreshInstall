resource "aws_lambda_function" "tfer--hello-world-dev-hello" {
  architectures                  = ["x86_64"]
  function_name                  = "hello-world-dev-hello"
  handler                        = "handler.hello"
  memory_size                    = "1024"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::064592191516:role/hello-world-dev-us-east-1-lambdaRole"
  runtime                        = "nodejs18.x"
  source_code_hash               = "eFxg46Ci66caKp3lQN7q04Dbx/E+MG38qq+1RZv8Ld8="

  tags = {
    STAGE = "dev"
  }

  tags_all = {
    STAGE = "dev"
  }

  timeout = "6"

  tracing_config {
    mode = "PassThrough"
  }
}

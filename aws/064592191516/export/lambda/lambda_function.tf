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

resource "aws_lambda_function" "tfer--twentyfour-hour-video-python-transcode-video" {
  architectures = ["x86_64"]

  environment {
    variables = {
      MEDIA_ENDPOINT          = "https://lxlxpswfb.mediaconvert.us-east-1.amazonaws.com"
      MEDIA_ROLE              = "arn:aws:iam::064592191516:role/media-convert-role"
      TRANSCODED_VIDEO_BUCKET = "064592191516-serverless-video-transcode-python"
    }
  }

  function_name = "twentyfour-hour-video-python-transcode-video"

  image_config {
    command = ["transcode_video_python/__main__.lambda_handler"]
  }

  image_uri                      = "064592191516.dkr.ecr.us-east-1.amazonaws.com/transcode_video_python:latest"
  memory_size                    = "1024"
  package_type                   = "Image"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::064592191516:role/transcode-video"
  source_code_hash               = "a2314b2c846fa4f3bb29b3f64cfd1c7f32c391a67ab05be4de86cfb1d056e0ba"

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

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

resource "aws_lambda_function" "tfer--twentyfour-hour-video-dev-transcode-video" {
  architectures = ["x86_64"]

  environment {
    variables = {
      MEDIA_ENDPOINT          = "https://lxlxpswfb.mediaconvert.us-east-1.amazonaws.com"
      MEDIA_ROLE              = "arn:aws:iam::064592191516:role/media-convert-role"
      TRANSCODED_VIDEO_BUCKET = "064592191516-serverless-video-transcode"
    }
  }

  function_name                  = "twentyfour-hour-video-dev-transcode-video"
  handler                        = "transcode-video/index.handler"
  memory_size                    = "1024"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::064592191516:role/transcode-video"
  runtime                        = "nodejs18.x"
  source_code_hash               = "ZXvzYENFVj97WuyaqrYaVoZSTrIjTALeXz3HHzjoCfs="

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

resource "aws_lambda_function" "tfer--twentyfour-hour-video-python-dev-custom-resource-existing-s3" {
  architectures                  = ["x86_64"]
  function_name                  = "twentyfour-hour-video-python-dev-custom-resource-existing-s3"
  handler                        = "s3/handler.handler"
  memory_size                    = "1024"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::064592191516:role/twentyfour-hour-video-pyt-IamRoleCustomResourcesLa-14ZCQM4Y0UVKN"
  runtime                        = "nodejs16.x"
  source_code_hash               = "eg6CnTQoX8hAylWdAcnMxFSwIFntmpfCIzWLkAznm8Q="

  tags = {
    STAGE = "dev"
  }

  tags_all = {
    STAGE = "dev"
  }

  timeout = "180"

  tracing_config {
    mode = "PassThrough"
  }
}

resource "aws_lambda_function" "tfer--twentyfour-hour-video-python-dev-transcode-video" {
  architectures = ["x86_64"]

  environment {
    variables = {
      MEDIA_ENDPOINT          = "https://lxlxpswfb.mediaconvert.us-east-1.amazonaws.com"
      MEDIA_ROLE              = "arn:aws:iam::064592191516:role/media-convert-role"
      TRANSCODED_VIDEO_BUCKET = "064592191516-serverless-video-transcode-python"
    }
  }

  function_name = "twentyfour-hour-video-python-dev-transcode-video"

  image_config {
    command = ["transcode_video_python/__main__.lambda_handler"]
  }

  image_uri                      = "064592191516.dkr.ecr.us-east-1.amazonaws.com/transcode_video_python@sha256:34e2a1603ba3bceb7f0e51ccdef6d5a1c90c4d68af2bc3bf6af4491a13e8d688"
  memory_size                    = "1024"
  package_type                   = "Image"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::064592191516:role/transcode-video"
  source_code_hash               = "34e2a1603ba3bceb7f0e51ccdef6d5a1c90c4d68af2bc3bf6af4491a13e8d688"

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

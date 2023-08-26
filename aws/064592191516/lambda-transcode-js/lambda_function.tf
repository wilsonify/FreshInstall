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
  tags                           = { STAGE = "dev" }
  tags_all                       = { STAGE = "dev" }
  timeout                        = "6"
  tracing_config { mode = "PassThrough" }
}


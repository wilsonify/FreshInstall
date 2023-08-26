resource "aws_lambda_function" "tfer--twentyfour-hour-video-python-dev-transcode-video" {
  architectures = ["x86_64"]
  environment {
    variables = {
      MEDIA_ENDPOINT          = "https://lxlxpswfb.mediaconvert.us-east-1.amazonaws.com"
      MEDIA_ROLE              = "arn:aws:iam::064592191516:role/media-convert-role"
      TRANSCODED_VIDEO_BUCKET = "064592191516-serverless-video-transcode-python"
    }
  }
  function_name                  = "twentyfour-hour-video-python-dev-transcode-video"
  handler                        = "transcode_video_python/__main__.lambda_handler"
  memory_size                    = "1024"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::064592191516:role/transcode-video"
  runtime                        = "python3.9"
  source_code_hash               = "Ifhv6XrI72wYqltYT1pZLg/y7XINGNiRTH/yQ1xQy9I="

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

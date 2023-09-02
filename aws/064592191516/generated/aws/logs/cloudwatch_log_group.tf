resource "aws_cloudwatch_log_group" "tfer---002F-aws-002F-lambda-002F-hello-world-dev-hello" {
  name = "/aws/lambda/hello-world-dev-hello"

  tags = {
    STAGE = "dev"
  }

  tags_all = {
    STAGE = "dev"
  }
}

resource "aws_cloudwatch_log_group" "tfer---002F-aws-002F-lambda-002F-twentyfour-hour-video-dev-transcode-video" {
  name = "/aws/lambda/twentyfour-hour-video-dev-transcode-video"

  tags = {
    STAGE = "dev"
  }

  tags_all = {
    STAGE = "dev"
  }
}

resource "aws_cloudwatch_log_group" "tfer---002F-aws-002F-lambda-002F-twentyfour-hour-video-python-dev-transcode-video" {
  name = "/aws/lambda/twentyfour-hour-video-python-dev-transcode-video"

  tags = {
    STAGE = "dev"
  }

  tags_all = {
    STAGE = "dev"
  }
}

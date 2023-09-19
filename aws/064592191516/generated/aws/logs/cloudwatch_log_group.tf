resource "aws_cloudwatch_log_group" "tfer---002F-aws-002F-lambda-002F-twentyfour-hour-video-python-transcode-video" {
  name = "/aws/lambda/twentyfour-hour-video-python-transcode-video"
}

resource "aws_cloudwatch_log_group" "tfer---002F-aws-002F-sagemaker-002F-NotebookInstances" {
  name = "/aws/sagemaker/NotebookInstances"
}

resource "aws_cloudwatch_log_group" "tfer---002F-aws-002F-sagemaker-002F-studio" {
  name = "/aws/sagemaker/studio"
}

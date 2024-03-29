resource "aws_cloudwatch_log_group" "tfer---002F-aws-002F-lambda-002F-mlflow-tf-s01-create-training-dataset" {
  name = "/aws/lambda/mlflow-tf-s01-create-training-dataset"
}

resource "aws_cloudwatch_log_group" "tfer---002F-aws-002F-lambda-002F-mlflow-tf-s02-preprocessing" {
  name = "/aws/lambda/mlflow-tf-s02-preprocessing"
}

resource "aws_cloudwatch_log_group" "tfer---002F-aws-002F-lambda-002F-mlflow-tf-s03-train" {
  name = "/aws/lambda/mlflow-tf-s03-train"
}

resource "aws_cloudwatch_log_group" "tfer---002F-aws-002F-lambda-002F-s01-wine-scrape-lambda" {
  name = "/aws/lambda/s01-wine-scrape-lambda"
}

resource "aws_cloudwatch_log_group" "tfer---002F-aws-002F-lambda-002F-terratest-docker-build" {
  name = "/aws/lambda/terratest-docker-build"
}

resource "aws_cloudwatch_log_group" "tfer---002F-aws-002F-lambda-002F-twentyfour-hour-video-python-transcode-video" {
  name = "/aws/lambda/twentyfour-hour-video-python-transcode-video"
}

resource "aws_cloudwatch_log_group" "tfer---002F-aws-002F-sagemaker-002F-NotebookInstances" {
  name = "/aws/sagemaker/NotebookInstances"
}

resource "aws_cloudwatch_log_group" "tfer---002F-aws-002F-sagemaker-002F-studio" {
  name = "/aws/sagemaker/studio"
}

resource "aws_cloudwatch_log_group" "tfer---002F-ecs-002F-" {
  name = "/ecs/"
}

resource "aws_cloudwatch_log_group" "tfer---002F-ecs-002F-hello-world-task" {
  name = "/ecs/hello-world-task"
}

resource "aws_cloudwatch_log_group" "tfer---002F-ecs-002F-mlflow-task" {
  name = "/ecs/mlflow-task"
}

resource "aws_cloudwatch_log_group" "tfer---002F-ecs-002F-mlflow-tf-s03-train-task" {
  name = "/ecs/mlflow-tf-s03-train-task"
}

resource "aws_cloudwatch_log_group" "tfer--hello-world" {
  name = "hello-world"
}

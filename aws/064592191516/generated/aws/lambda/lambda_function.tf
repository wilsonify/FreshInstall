resource "aws_lambda_function" "tfer--mlflow-tf-s01-create-training-dataset" {
  architectures                  = ["x86_64"]
  function_name                  = "mlflow-tf-s01-create-training-dataset"
  image_uri                      = "064592191516.dkr.ecr.us-east-1.amazonaws.com/mlflow-tf@sha256:4979ec146991a49471e5cf20099769d2cb0297fc015a956712eee2ab4cf3aa85"
  memory_size                    = "3008"
  package_type                   = "Image"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::064592191516:role/service-role/mlflow-tf-s01-create-training-dataset-role-prmds7c1"
  source_code_hash               = "4979ec146991a49471e5cf20099769d2cb0297fc015a956712eee2ab4cf3aa85"
  timeout                        = "180"

  tracing_config {
    mode = "PassThrough"
  }
}

resource "aws_lambda_function" "tfer--mlflow-tf-s02-preprocessing" {
  architectures = ["x86_64"]
  function_name = "mlflow-tf-s02-preprocessing"

  image_config {
    command = ["mlflow_tf/s02_preprocessing.lambda_handler"]
  }

  image_uri                      = "064592191516.dkr.ecr.us-east-1.amazonaws.com/mlflow-tf@sha256:4979ec146991a49471e5cf20099769d2cb0297fc015a956712eee2ab4cf3aa85"
  memory_size                    = "2048"
  package_type                   = "Image"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::064592191516:role/service-role/mlflow-tf-s02-preprocessing-role-e0quy6vk"
  source_code_hash               = "4979ec146991a49471e5cf20099769d2cb0297fc015a956712eee2ab4cf3aa85"
  timeout                        = "180"

  tracing_config {
    mode = "PassThrough"
  }
}

resource "aws_lambda_function" "tfer--mlflow-tf-s03-train" {
  architectures = ["x86_64"]
  function_name = "mlflow-tf-s03-train"

  image_config {
    command = ["mlflow_tf/s03_train_sans_mlflow.lambda_handler"]
  }

  image_uri                      = "064592191516.dkr.ecr.us-east-1.amazonaws.com/mlflow-tf@sha256:b34681b12a4f8b9a6077493a88318736aeed7bc414beda46b1696e83c654d9d3"
  memory_size                    = "3008"
  package_type                   = "Image"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::064592191516:role/service-role/mlflow-tf-s03-train-role-5hkjz400"
  source_code_hash               = "b34681b12a4f8b9a6077493a88318736aeed7bc414beda46b1696e83c654d9d3"
  timeout                        = "900"

  tracing_config {
    mode = "PassThrough"
  }
}

resource "aws_lambda_function" "tfer--s01-wine-scrape-lambda" {
  architectures = ["x86_64"]
  function_name = "s01-wine-scrape-lambda"

  image_config {
    command = ["s01_wine_scrape/__main__.lambda_handler"]
  }

  image_uri                      = "064592191516.dkr.ecr.us-east-1.amazonaws.com/s01_wine_scrape:0.2.4"
  memory_size                    = "1024"
  package_type                   = "Image"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::064592191516:role/service-role/s01-wine-scrape-lambda-role-budx8fug"
  source_code_hash               = "6efed25794506f28231a5aa236be14a834115c2bded34db6a7e799db3fe284ff"
  timeout                        = "600"

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

  image_uri                      = "064592191516.dkr.ecr.us-east-1.amazonaws.com/transcode_video_python@sha256:678ee8b39e57380f9051d0e6ed2ee31c1c4981f7e123639ca3e2210ba54fa8db"
  memory_size                    = "1024"
  package_type                   = "Image"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::064592191516:role/transcode-video"
  source_code_hash               = "678ee8b39e57380f9051d0e6ed2ee31c1c4981f7e123639ca3e2210ba54fa8db"

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

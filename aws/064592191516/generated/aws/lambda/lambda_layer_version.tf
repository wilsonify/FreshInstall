resource "aws_lambda_layer_version" "tfer--arn-003A-aws-003A-lambda-003A-us-east-1-003A-064592191516-003A-layer-003A-scikit-learn-layer-003A-1" {
  compatible_architectures = ["x86_64"]
  compatible_runtimes      = ["python3.10"]
  description              = "scikit-learn"
  layer_name               = "scikit-learn-layer"
  license_info             = "BSD 3-Clause"
  source_code_hash         = "pKjotR/XoqBJwIeyXtVThFdHGhbLiWVcAR/FTF0CFP8="
}

resource "aws_lambda_layer_version" "tfer--arn-003A-aws-003A-lambda-003A-us-east-1-003A-064592191516-003A-layer-003A-scipy-layer-003A-1" {
  compatible_architectures = ["x86_64"]
  compatible_runtimes      = ["python3.10"]
  description              = "scipy"
  layer_name               = "scipy-layer"
  license_info             = "BSD 3-Clause"
  source_code_hash         = "4W+2Thh/kp3R84WluSaT1CuMxcXoi/piXfyia0glSJ8="
}

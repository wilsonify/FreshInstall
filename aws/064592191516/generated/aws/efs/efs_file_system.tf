resource "aws_efs_file_system" "tfer--fs-0a5da8a67f02347db" {
  creation_token                  = "d-g7djlrunxivy"
  encrypted                       = "true"
  kms_key_id                      = "arn:aws:kms:us-east-1:064592191516:key/3598db74-5632-44ad-a4ba-6988399e41f2"
  performance_mode                = "generalPurpose"
  provisioned_throughput_in_mibps = "0"

  tags = {
    ManagedByAmazonSageMakerResource = "arn:aws:sagemaker:us-east-1:064592191516:domain/d-g7djlrunxivy"
  }

  tags_all = {
    ManagedByAmazonSageMakerResource = "arn:aws:sagemaker:us-east-1:064592191516:domain/d-g7djlrunxivy"
  }

  throughput_mode = "bursting"
}

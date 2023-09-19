resource "aws_security_group" "tfer--default_sg-b21a8cf9" {
  description = "default VPC security group"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    from_port = "0"
    protocol  = "-1"
    self      = "true"
    to_port   = "0"
  }

  name   = "default"
  vpc_id = "vpc-0827c472"
}

resource "aws_security_group" "tfer--security-group-for-inbound-nfs-d-g7djlrunxivy_sg-03d1519c73bb12ff4" {
  description = "[DO NOT DELETE] Security Group that allows inbound NFS traffic for SageMaker Notebooks Domain [d-g7djlrunxivy]"

  ingress {
    from_port       = "2049"
    protocol        = "tcp"
    security_groups = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--security-group-for-outbound-nfs-d-g7djlrunxivy_sg-094724d968357e874_id}"]
    self            = "false"
    to_port         = "2049"
  }

  name = "security-group-for-inbound-nfs-d-g7djlrunxivy"

  tags = {
    ManagedByAmazonSageMakerResource = "arn:aws:sagemaker:us-east-1:064592191516:domain/d-g7djlrunxivy"
  }

  tags_all = {
    ManagedByAmazonSageMakerResource = "arn:aws:sagemaker:us-east-1:064592191516:domain/d-g7djlrunxivy"
  }

  vpc_id = "vpc-0827c472"
}

resource "aws_security_group" "tfer--security-group-for-outbound-nfs-d-g7djlrunxivy_sg-094724d968357e874" {
  description = "[DO NOT DELETE] Security Group that allows outbound NFS traffic for SageMaker Notebooks Domain [d-g7djlrunxivy]"

  egress {
    from_port       = "2049"
    protocol        = "tcp"
    security_groups = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--security-group-for-inbound-nfs-d-g7djlrunxivy_sg-03d1519c73bb12ff4_id}"]
    self            = "false"
    to_port         = "2049"
  }

  name = "security-group-for-outbound-nfs-d-g7djlrunxivy"

  tags = {
    ManagedByAmazonSageMakerResource = "arn:aws:sagemaker:us-east-1:064592191516:domain/d-g7djlrunxivy"
  }

  tags_all = {
    ManagedByAmazonSageMakerResource = "arn:aws:sagemaker:us-east-1:064592191516:domain/d-g7djlrunxivy"
  }

  vpc_id = "vpc-0827c472"
}

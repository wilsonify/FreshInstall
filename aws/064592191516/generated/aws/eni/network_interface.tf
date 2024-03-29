resource "aws_network_interface" "tfer--eni-01717045e59d3965c" {
  description        = "EFS mount target for fs-0a5da8a67f02347db (fsmt-08c866316a3505533)"
  interface_type     = "efs"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "172.31.73.10"
  private_ip_list    = ["172.31.73.10"]
  private_ips        = ["172.31.73.10"]
  private_ips_count  = "0"
  security_groups    = ["sg-03d1519c73bb12ff4"]
  source_dest_check  = "true"
  subnet_id          = "subnet-8bef8b84"
}

resource "aws_network_interface" "tfer--eni-03ce6ad35793f5775" {
  description        = "EFS mount target for fs-0a5da8a67f02347db (fsmt-0039d87ae5e636686)"
  interface_type     = "efs"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "172.31.24.82"
  private_ip_list    = ["172.31.24.82"]
  private_ips        = ["172.31.24.82"]
  private_ips_count  = "0"
  security_groups    = ["sg-03d1519c73bb12ff4"]
  source_dest_check  = "true"
  subnet_id          = "subnet-3fa0ce75"
}

resource "aws_network_interface" "tfer--eni-0449396824ecc965c" {
  description        = "EFS mount target for fs-0a5da8a67f02347db (fsmt-005cb181c7ff2adc0)"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "172.31.63.208"
  private_ip_list    = ["172.31.63.208"]
  private_ips        = ["172.31.63.208"]
  private_ips_count  = "0"
  security_groups    = ["sg-03d1519c73bb12ff4"]
  source_dest_check  = "true"
  subnet_id          = "subnet-7333db4d"
}

resource "aws_network_interface" "tfer--eni-06f01e0f687297a5e" {
  description        = "EFS mount target for fs-0a5da8a67f02347db (fsmt-0947a6c0d17e70624)"
  interface_type     = "efs"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "172.31.2.17"
  private_ip_list    = ["172.31.2.17"]
  private_ips        = ["172.31.2.17"]
  private_ips_count  = "0"
  security_groups    = ["sg-03d1519c73bb12ff4"]
  source_dest_check  = "true"
  subnet_id          = "subnet-cff228a8"
}

resource "aws_network_interface" "tfer--eni-0a9de076283d4e046" {
  description        = "EFS mount target for fs-0a5da8a67f02347db (fsmt-0566de1de616e1a16)"
  interface_type     = "efs"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "172.31.82.31"
  private_ip_list    = ["172.31.82.31"]
  private_ips        = ["172.31.82.31"]
  private_ips_count  = "0"
  security_groups    = ["sg-03d1519c73bb12ff4"]
  source_dest_check  = "true"
  subnet_id          = "subnet-8513b6ab"
}

resource "aws_network_interface" "tfer--eni-0ed60f1013b3c9adf" {
  description        = "[DO NOT DELETE] ENI managed by SageMaker for Studio Domain(d-g7djlrunxivy) - a09d795df1d5926f328cb6564db19ab2"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "172.31.16.211"
  private_ip_list    = ["172.31.16.211"]
  private_ips        = ["172.31.16.211"]
  private_ips_count  = "0"
  security_groups    = ["sg-094724d968357e874"]
  source_dest_check  = "true"
  subnet_id          = "subnet-3fa0ce75"

  tags = {
    ManagedByAmazonSageMakerResource = "arn:aws:sagemaker:us-east-1:064592191516:node/d-g7djlrunxivy/default-20230916t105232/system-jupyterserverorkernelgateway"
  }

  tags_all = {
    ManagedByAmazonSageMakerResource = "arn:aws:sagemaker:us-east-1:064592191516:node/d-g7djlrunxivy/default-20230916t105232/system-jupyterserverorkernelgateway"
  }
}

resource "aws_network_interface" "tfer--eni-0f1a316aeade11687" {
  description        = "EFS mount target for fs-0a5da8a67f02347db (fsmt-027c231e43181e653)"
  interface_type     = "efs"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "172.31.42.228"
  private_ip_list    = ["172.31.42.228"]
  private_ips        = ["172.31.42.228"]
  private_ips_count  = "0"
  security_groups    = ["sg-03d1519c73bb12ff4"]
  source_dest_check  = "true"
  subnet_id          = "subnet-5a568d06"
}

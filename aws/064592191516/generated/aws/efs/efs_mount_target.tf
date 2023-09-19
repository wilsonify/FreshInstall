resource "aws_efs_mount_target" "tfer--fsmt-0039d87ae5e636686" {
  file_system_id  = "fs-0a5da8a67f02347db"
  ip_address      = "172.31.24.82"
  security_groups = ["sg-03d1519c73bb12ff4"]
  subnet_id       = "subnet-3fa0ce75"
}

resource "aws_efs_mount_target" "tfer--fsmt-005cb181c7ff2adc0" {
  file_system_id  = "fs-0a5da8a67f02347db"
  ip_address      = "172.31.63.208"
  security_groups = ["sg-03d1519c73bb12ff4"]
  subnet_id       = "subnet-7333db4d"
}

resource "aws_efs_mount_target" "tfer--fsmt-027c231e43181e653" {
  file_system_id  = "fs-0a5da8a67f02347db"
  ip_address      = "172.31.42.228"
  security_groups = ["sg-03d1519c73bb12ff4"]
  subnet_id       = "subnet-5a568d06"
}

resource "aws_efs_mount_target" "tfer--fsmt-0566de1de616e1a16" {
  file_system_id  = "fs-0a5da8a67f02347db"
  ip_address      = "172.31.82.31"
  security_groups = ["sg-03d1519c73bb12ff4"]
  subnet_id       = "subnet-8513b6ab"
}

resource "aws_efs_mount_target" "tfer--fsmt-08c866316a3505533" {
  file_system_id  = "fs-0a5da8a67f02347db"
  ip_address      = "172.31.73.10"
  security_groups = ["sg-03d1519c73bb12ff4"]
  subnet_id       = "subnet-8bef8b84"
}

resource "aws_efs_mount_target" "tfer--fsmt-0947a6c0d17e70624" {
  file_system_id  = "fs-0a5da8a67f02347db"
  ip_address      = "172.31.2.17"
  security_groups = ["sg-03d1519c73bb12ff4"]
  subnet_id       = "subnet-cff228a8"
}

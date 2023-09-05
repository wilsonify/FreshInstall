resource "aws_network_acl" "tfer--acl-da9ad5a0" {
  egress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  ingress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  subnet_ids = ["subnet-3fa0ce75", "subnet-5a568d06", "subnet-7333db4d", "subnet-8513b6ab", "subnet-8bef8b84", "subnet-cff228a8"]
  vpc_id     = "vpc-0827c472"
}

resource "aws_network_acl" "tfer--acl-da9ad5a0" {
  egress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  ingress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  subnet_ids = ["subnet-3fa0ce75", "subnet-5a568d06", "subnet-7333db4d", "subnet-8513b6ab", "subnet-8bef8b84", "subnet-cff228a8"]
  vpc_id     = "vpc-0827c472"
}


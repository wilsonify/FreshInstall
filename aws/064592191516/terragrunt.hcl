
remote_state {
  backend = "s3"
  config  = {
    bucket         = "064592191516-terraform-state"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "064592191516-lock-table"
  }
}

# if you don't have a backend,
# you can use a local backend to bootstrap s3 and dynamodb,
# then use terragrunt init --migrate-state to populate it
# remote_state {
#  backend = "local"
# }


inputs = {
  name            = "vpc-0827c472"
  cidr            = "172.31.0.0/16"
  azs             = ["us-east-1a", "us-east-1b", "us-east-1c", "us-east-1d", "us-east-1e", "us-east-1f"]
  private_subnets = [
    "subnet-3fa0ce75", "subnet-5a568d06", "subnet-cff228a8", "subnet-8513b6ab", "subnet-7333db4d", "subnet-8bef8b84"
  ]
  private_cidrs = [
    "172.31.16.0/20", "172.31.32.0/20", "172.31.0.0/20", "172.31.80.0/20", "172.31.48.0/20", "172.31.64.0/20"
  ]
  public_subnets     = []
  enable_nat_gateway = true
  enable_vpn_gateway = false
  tags               = {
    Terraform   = "true"
    Environment = "dev"
  }
}
data "terraform_remote_state" "sns" {
  backend = "local"

  config = {
    path = "../../../generated/aws/sns/terraform.tfstate"
  }
}

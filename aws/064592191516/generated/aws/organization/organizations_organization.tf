resource "aws_organizations_organization" "tfer--Thomas-0020-Wilson" {
  aws_service_access_principals = ["sso.amazonaws.com"]
  feature_set                   = "ALL"
}

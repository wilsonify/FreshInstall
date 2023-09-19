resource "aws_iam_group_policy_attachment" "tfer--Admin_AdministratorAccess" {
  group      = "Admin"
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

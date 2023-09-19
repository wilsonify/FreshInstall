resource "aws_iam_user_policy_attachment" "tfer--thom_AWSBudgetsActionsWithAWSResourceControlAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSBudgetsActionsWithAWSResourceControlAccess"
  user       = "thom"
}

resource "aws_iam_user_policy_attachment" "tfer--thom_AWSBudgetsActions_RolePolicyForResourceAdministrationWithSSM" {
  policy_arn = "arn:aws:iam::aws:policy/AWSBudgetsActions_RolePolicyForResourceAdministrationWithSSM"
  user       = "thom"
}

resource "aws_iam_user_policy_attachment" "tfer--thom_AWSBudgetsReadOnlyAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSBudgetsReadOnlyAccess"
  user       = "thom"
}

resource "aws_iam_user_policy_attachment" "tfer--thom_AWSCostAndUsageReportAutomationPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSCostAndUsageReportAutomationPolicy"
  user       = "thom"
}

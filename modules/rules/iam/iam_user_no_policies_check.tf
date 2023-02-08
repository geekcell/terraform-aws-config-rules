resource "aws_config_config_rule" "iam_user_no_policies_check" {
  count = var.configuration.iam_user_no_policies_check.enabled ? 1 : 0

  name        = "iam-user-no-policies-check"
  description = "Checks that none of your IAM users have policies attached. IAM users must inherit permissions from IAM groups or roles."

  source {
    owner             = "AWS"
    source_identifier = "IAM_USER_NO_POLICIES_CHECK"
  }

  scope {
    compliance_resource_types = [
      "AWS::IAM::User",
    ]
  }

  tags = var.tags
}

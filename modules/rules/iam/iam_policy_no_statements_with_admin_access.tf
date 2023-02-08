resource "aws_config_config_rule" "iam_policy_no_statements_with_admin_access" {
  count = var.configuration.iam_policy_no_statements_with_admin_access.enabled ? 1 : 0

  name        = "iam-policy-no-statements-with-admin-access"
  description = "Checks whether the default version of AWS Identity and Access Management (IAM) policies do not have administrator access."

  source {
    owner             = "AWS"
    source_identifier = "IAM_POLICY_NO_STATEMENTS_WITH_ADMIN_ACCESS"
  }

  scope {
    compliance_resource_types = [
      "AWS::IAM::Policy"
    ]
  }

  tags = var.tags
}

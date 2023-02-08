resource "aws_config_config_rule" "rds_instance_public_access_check" {
  count = var.configuration.rds_instance_public_access_check.enabled ? 1 : 0

  name        = "rds-instance-public-access-check"
  description = "Checks whether the Amazon Relational Database Service (RDS) instances are not publicly accessible. The rule is non-compliant if the publiclyAccessible field is true in the instance configuration item."

  source {
    owner             = "AWS"
    source_identifier = "RDS_INSTANCE_PUBLIC_ACCESS_CHECK"
  }

  scope {
    compliance_resource_types = [
      "AWS::RDS::DBInstance",
    ]
  }

  tags = var.tags
}

resource "aws_config_config_rule" "rds_snapshots_public_prohibited" {
  count = var.configuration.rds_snapshots_public_prohibited.enabled ? 1 : 0

  name        = "rds-snapshots-public-prohibited"
  description = "Checks if Amazon Relational Database Service (Amazon RDS) snapshots are public. The rule is non-compliant if any existing and new Amazon RDS snapshots are public."

  source {
    owner             = "AWS"
    source_identifier = "RDS_SNAPSHOTS_PUBLIC_PROHIBITED"
  }

  scope {
    compliance_resource_types = [
      "AWS::RDS::DBClusterSnapshot",
      "AWS::RDS::DBSnapshot",
    ]
  }

  tags = var.tags
}

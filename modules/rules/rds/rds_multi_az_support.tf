resource "aws_config_config_rule" "rds_multi_az_support" {
  count = var.configuration.rds_multi_az_support.enabled ? 1 : 0

  name        = "rds-multi-az-support"
  description = "Checks whether high availability is enabled for your RDS DB instances."

  source {
    owner             = "AWS"
    source_identifier = "RDS_MULTI_AZ_SUPPORT"
  }

  scope {
    compliance_resource_types = [
      "AWS::RDS::DBInstance",
    ]
  }

  tags = var.tags
}

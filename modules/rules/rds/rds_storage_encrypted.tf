resource "aws_config_config_rule" "rds_storage_encrypted" {
  count = var.configuration.rds_storage_encrypted.enabled ? 1 : 0

  name        = "rds-storage-encrypted"
  description = "Checks whether storage encryption is enabled for your RDS DB instances."

  source {
    owner             = "AWS"
    source_identifier = "RDS_STORAGE_ENCRYPTED"
  }

  scope {
    compliance_resource_types = [
      "AWS::RDS::DBInstance",
    ]
  }

  tags = var.tags
}

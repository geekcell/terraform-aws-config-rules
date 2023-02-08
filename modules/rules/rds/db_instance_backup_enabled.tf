resource "aws_config_config_rule" "db_instance_backup_enabled" {
  count = var.configuration.db_instance_backup_enabled.enabled ? 1 : 0

  name        = "db-instance-backup-enabled"
  description = "Checks whether RDS DB instances have backups enabled."

  input_parameters = jsonencode({
    "checkReadReplicas" : "false"
  })

  source {
    owner             = "AWS"
    source_identifier = "DB_INSTANCE_BACKUP_ENABLED"
  }

  scope {
    compliance_resource_types = [
      "AWS::RDS::DBInstance",
    ]
  }

  tags = var.tags
}

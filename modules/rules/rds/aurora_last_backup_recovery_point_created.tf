#resource "aws_config_config_rule" "aurora_last_backup_recovery_point_created" {
#  for_each = var.configuration.aurora_last_backup_recovery_point_created.enabled ? var.resource_ids : []
#
#  name        = "aurora-last-backup-recovery-point-created"
#  description = "Checks if a recovery point was created for Amazon Aurora DB clusters. The rule is NON_COMPLIANT if the Amazon Relational Database Service (Amazon RDS) DB Cluster does not have a corresponding recovery point created within the specified time period."
#
#  input_parameters = jsonencode(
#    {
#      "recoveryPointAgeUnit" = "days"
#      "recoveryPointAge"     = 1
#      "resourceId"           = each.key
#    }
#  )
#
#  maximum_execution_frequency = "TwentyFour_Hours"
#
#  source {
#    owner             = "AWS"
#    source_identifier = "AURORA_LAST_BACKUP_RECOVERY_POINT_CREATED"
#  }
#
#  tags = var.tags
#}

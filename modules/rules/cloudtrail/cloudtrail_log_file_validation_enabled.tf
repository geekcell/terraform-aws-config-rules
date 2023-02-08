resource "aws_config_config_rule" "cloudtrail_log_file_validation_enabled" {
  count = var.configuration.cloudtrail_log_file_validation_enabled.enabled ? 1 : 0

  name        = "cloudtrail-log-file-validation-enabled"
  description = "Checks whether AWS CloudTrail creates a signed digest file with logs. AWS recommends that the file validation must be enabled on all trails. The rule is noncompliant if the validation is not enabled."

  maximum_execution_frequency = "TwentyFour_Hours"

  source {
    owner             = "AWS"
    source_identifier = "CLOUD_TRAIL_LOG_FILE_VALIDATION_ENABLED"
  }

  tags = var.tags
}

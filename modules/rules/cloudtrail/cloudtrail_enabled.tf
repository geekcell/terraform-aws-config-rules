resource "aws_config_config_rule" "cloudtrail_enabled" {
  count = var.configuration.cloudtrail_enabled.enabled ? 1 : 0

  name        = "cloudtrail-enabled"
  description = "Checks whether AWS CloudTrail is enabled in your AWS account."

  input_parameters = jsonencode(
    {
      "s3BucketName" = var.configuration.cloudtrail_enabled["bucket_id"]
    }
  )

  source {
    owner             = "AWS"
    source_identifier = "CLOUD_TRAIL_ENABLED"
  }

  tags = var.tags
}

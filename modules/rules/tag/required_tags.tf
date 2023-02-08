resource "aws_config_config_rule" "required_tags" {
  count = var.configuration.required_tags.enabled ? 1 : 0

  name        = "required-tags"
  description = "Checks whether your resources have the tags that you specify."

  input_parameters = jsonencode(
    {
      "tag1Key" : "Terraform"
      "tag1Value" : "true"
    }
  )

  source {
    owner             = "AWS"
    source_identifier = "REQUIRED_TAGS"
  }

  scope {
    compliance_resource_types = [
      "AWS::EC2::Instance",
      "AWS::RDS::DBInstance"
    ]
  }

  tags = var.tags
}

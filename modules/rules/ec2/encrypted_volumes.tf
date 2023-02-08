resource "aws_config_config_rule" "encrypted_volumes" {
  count = var.configuration.encrypted_volumes.enabled ? 1 : 0

  name        = "encrypted-volumes"
  description = "Checks whether EBS volumes that are in an attached state are encrypted."

  input_parameters = jsonencode({})

  source {
    owner             = "AWS"
    source_identifier = "ENCRYPTED_VOLUMES"
  }

  scope {
    compliance_resource_types = [
      "AWS::EC2::Volume"
    ]
  }

  tags = var.tags
}

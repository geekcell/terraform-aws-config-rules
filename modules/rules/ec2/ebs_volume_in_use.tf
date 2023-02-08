resource "aws_config_config_rule" "ec2_volume_in_use" {
  count = var.configuration.ec2_volume_in_use.enabled ? 1 : 0

  name        = "ec2-volume-inuse-check"
  description = "Checks whether EBS volumes are attached to EC2 instances."

  input_parameters = jsonencode({})

  source {
    owner             = "AWS"
    source_identifier = "EC2_VOLUME_INUSE_CHECK"
  }

  scope {
    compliance_resource_types = [
      "AWS::EC2::Volume"
    ]
  }

  tags = var.tags
}

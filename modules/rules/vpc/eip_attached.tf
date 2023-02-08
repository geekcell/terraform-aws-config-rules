resource "aws_config_config_rule" "eip_attached" {
  count = var.configuration.eip_attached.enabled ? 1 : 0

  name        = "eip-attached"
  description = "Checks whether all EIP addresses allocated to a VPC are attached to EC2 instances or in-use ENIs."

  source {
    owner             = "AWS"
    source_identifier = "EIP_ATTACHED"
  }

  tags = var.tags
}

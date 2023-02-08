resource "aws_config_config_rule" "instances_in_vpc" {
  count = var.configuration.instances_in_vpc.enabled ? 1 : 0

  name        = "instances-in-vpc"
  description = "Checks whether your EC2 instances belong to a virtual private cloud (VPC)."

  source {
    owner             = "AWS"
    source_identifier = "INSTANCES_IN_VPC"
  }

  tags = var.tags
}

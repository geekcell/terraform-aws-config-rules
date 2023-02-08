resource "aws_config_config_rule" "autoscaling_group_elb_healthcheck_required" {
  count = var.configuration.autoscaling_group_elb_healthcheck_required.enabled ? 1 : 0

  name        = "autoscaling-group-elb-healthcheck-required"
  description = "Checks if your Auto Scaling groups that are associated with a Classic Load Balancer are using Elastic Load Balancing health checks. The rule is NON_COMPLIANT if the Auto Scaling groups are not using Elastic Load Balancing health checks."

  source {
    owner             = "AWS"
    source_identifier = "AUTOSCALING_GROUP_ELB_HEALTHCHECK_REQUIRED"
  }

  scope {
    compliance_resource_types = [
      "AWS::AutoScaling::AutoScalingGroup",
    ]
  }

  tags = var.tags
}

resource "aws_config_config_rule" "elb_acm_certificate_required" {
  count = var.configuration.elb_acm_certificate_required.enabled ? 1 : 0

  name        = "elb-acm-certificate-required"
  description = "This rule checks whether the Elastic Load Balancer(s) uses SSL certificates provided by AWS Certificate Manager. You must use an SSL or HTTPS listener with your Elastic Load Balancer to use this rule."

  source {
    owner             = "AWS"
    source_identifier = "ELB_ACM_CERTIFICATE_REQUIRED"
  }

  scope {
    compliance_resource_types = [
      "AWS::ElasticLoadBalancing::LoadBalancer",
    ]
  }

  tags = var.tags
}

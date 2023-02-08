resource "aws_config_config_rule" "alb_http_to_https_redirection_check" {
  count = var.configuration.alb_http_to_https_redirection_check.enabled ? 1 : 0

  name        = "alb-http-to-https-redirection-check"
  description = "Checks whether HTTP to HTTPS redirection is configured on all HTTP listeners of Application Load Balancers. The rule is NON_COMPLIANT if one or more HTTP listeners of Application Load Balancer do not have HTTP to HTTPS redirection configured."

  input_parameters = jsonencode({})

  source {
    owner             = "AWS"
    source_identifier = "ALB_HTTP_TO_HTTPS_REDIRECTION_CHECK"
  }

  maximum_execution_frequency = "One_Hour"

  tags = var.tags
}

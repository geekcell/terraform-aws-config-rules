resource "aws_config_config_rule" "acm_certificate_expiration_check" {
  count = var.configuration.acm_certificate_expiration_check.enabled ? 1 : 0

  name        = "acm-certificate-expiration-check"
  description = "Checks whether ACM Certificates in your account are marked for expiration within the specified number of days. Certificates provided by ACM are automatically renewed. ACM does not automatically renew certificates that you import."

  input_parameters = jsonencode(
    {
      "daysToExpiration" = "60"
    }
  )

  source {
    owner             = "AWS"
    source_identifier = "ACM_CERTIFICATE_EXPIRATION_CHECK"
  }

  maximum_execution_frequency = "TwentyFour_Hours"

  scope {
    compliance_resource_types = [
      "AWS::ACM::Certificate",
    ]
  }

  tags = var.tags
}

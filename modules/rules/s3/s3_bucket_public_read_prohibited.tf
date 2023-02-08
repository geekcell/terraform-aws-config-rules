resource "aws_config_config_rule" "s3_bucket_public_read_prohibited" {
  count = var.configuration.s3_bucket_public_read_prohibited.enabled ? 1 : 0

  name        = "s3-bucket-public-read-prohibited"
  description = "Checks that your Amazon S3 buckets do not allow public read access. The rule checks the Block Public Access settings, the bucket policy, and the bucket access control list (ACL)."

  input_parameters = jsonencode({})

  maximum_execution_frequency = "TwentyFour_Hours"

  source {
    owner             = "AWS"
    source_identifier = "S3_BUCKET_PUBLIC_READ_PROHIBITED"
  }

  scope {
    compliance_resource_types = [
      "AWS::S3::Bucket",
    ]
  }

  tags = var.tags
}

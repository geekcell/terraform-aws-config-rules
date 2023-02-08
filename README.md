<!-- BEGIN_TF_DOCS -->
[![Geek Cell GmbH](https://raw.githubusercontent.com/geekcell/template-terraform-module/main/docs/assets/logo.svg)](https://www.geekcell.io/)

### Code Quality
[![License](https://img.shields.io/github/license/geekcell/terraform-aws-config-rules)](https://github.com/geekcell/terraform-aws-config-rules/blob/master/LICENSE)
[![GitHub release (latest tag)](https://img.shields.io/github/v/release/geekcell/terraform-aws-config-rules?logo=github&sort=semver)](https://github.com/geekcell/terraform-aws-config-rules/releases)
[![Release](https://github.com/geekcell/terraform-aws-config-rules/actions/workflows/release.yaml/badge.svg)](https://github.com/geekcell/terraform-aws-config-rules/actions/workflows/release.yaml)
[![Validate](https://github.com/geekcell/terraform-aws-config-rules/actions/workflows/validate.yaml/badge.svg)](https://github.com/geekcell/terraform-aws-config-rules/actions/workflows/validate.yaml)
[![Lint](https://github.com/geekcell/terraform-aws-config-rules/actions/workflows/linter.yaml/badge.svg)](https://github.com/geekcell/terraform-aws-config-rules/actions/workflows/linter.yaml)

### Security
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-config-rules/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-config-rules&benchmark=INFRASTRUCTURE+SECURITY)

#### Cloud
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-config-rules/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-config-rules&benchmark=CIS+AWS+V1.2)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-config-rules/cis_aws_13)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-config-rules&benchmark=CIS+AWS+V1.3)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-config-rules/cis_azure)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-config-rules&benchmark=CIS+AZURE+V1.1)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-config-rules/cis_azure_13)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-config-rules&benchmark=CIS+AZURE+V1.3)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-config-rules/cis_gcp)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-config-rules&benchmark=CIS+GCP+V1.1)

##### Container
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-config-rules/cis_kubernetes_16)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-config-rules&benchmark=CIS+KUBERNETES+V1.6)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-config-rules/cis_eks_11)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-config-rules&benchmark=CIS+EKS+V1.1)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-config-rules/cis_gke_11)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-config-rules&benchmark=CIS+GKE+V1.1)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-config-rules/cis_kubernetes)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-config-rules&benchmark=CIS+KUBERNETES+V1.5)

#### Data protection
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-config-rules/soc2)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-config-rules&benchmark=SOC2)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-config-rules/pci)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-config-rules&benchmark=PCI-DSS+V3.2)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-config-rules/pci_dss_v321)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-config-rules&benchmark=PCI-DSS+V3.2.1)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-config-rules/iso)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-config-rules&benchmark=ISO27001)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-config-rules/nist)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-config-rules&benchmark=NIST-800-53)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-config-rules/hipaa)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-config-rules&benchmark=HIPAA)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/geekcell/terraform-aws-config-rules/fedramp_moderate)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=geekcell%2Fterraform-aws-config-rules&benchmark=FEDRAMP+%28MODERATE%29)



## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_acm"></a> [acm](#input\_acm) | A map of Cloudtrail configuration options. | <pre>map(object({<br>    enabled = bool<br>  }))</pre> | n/a | yes |
| <a name="input_cloudtrail"></a> [cloudtrail](#input\_cloudtrail) | A map of Cloudtrail configuration options. | <pre>map(object({<br>    enabled   = bool<br>    bucket_id = optional(string)<br>  }))</pre> | n/a | yes |
| <a name="input_ec2"></a> [ec2](#input\_ec2) | A map of EC2 configuration options. | <pre>map(object({<br>    enabled = bool<br>  }))</pre> | n/a | yes |
| <a name="input_iam"></a> [iam](#input\_iam) | A map of IAM configuration options. | <pre>map(object({<br>    enabled = bool<br>  }))</pre> | `{}` | no |
| <a name="input_lb"></a> [lb](#input\_lb) | A map of Load Balancer configuration options. | <pre>map(object({<br>    enabled = bool<br>  }))</pre> | `{}` | no |
| <a name="input_rds"></a> [rds](#input\_rds) | A map of RDS configuration options. | <pre>map(object({<br>    enabled = bool<br>  }))</pre> | `{}` | no |
| <a name="input_s3"></a> [s3](#input\_s3) | A map of S3 configuration options. | <pre>map(object({<br>    enabled = bool<br>  }))</pre> | `{}` | no |
| <a name="input_tag"></a> [tag](#input\_tag) | A map of Tag configuration options. | <pre>map(object({<br>    enabled = bool<br>  }))</pre> | `{}` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to all resources. | `map(string)` | `{}` | no |
| <a name="input_vpc"></a> [vpc](#input\_vpc) | A map of VPC configuration options. | <pre>map(object({<br>    enabled = bool<br>  }))</pre> | `{}` | no |

## Outputs

No outputs.

## Providers

No providers.

## Resources


# Examples
### Full Example
```hcl
module "full-example" {
  source = "../.."

  acm = {
    "acm_certificate_expiration_check" = {
      "enabled" = true
    }
  }

  cloudtrail = {
    "cloudtrail_enabled" = {
      "enabled"   = true
      "bucket_id" = "my-cloudtrail-bucket"
    },
    "cloudtrail_log_file_validation_enabled" = {
      "enabled" = true
    },
  }

  ec2 = {
    "autoscaling_group_elb_healthcheck_required" = {
      "enabled" = true
    },
    "ec2_volume_in_use" = {
      "enabled" = true
    },
    "encrypted_volumes" = {
      "enabled" = true
    },
    "instances_in_vpc" = {
      "enabled" = true
    },
  }

  iam = {
    "iam_policy_no_statements_with_admin_access" = {
      "enabled" = true
    },
    "iam_user_no_policies_check" = {
      "enabled" = true
    },
  }

  lb = {
    "alb_http_to_https_redirection_check" = {
      "enabled" = true
    },
    "elb_acm_certificate_required" = {
      "enabled" = true
    },
  }

  rds = {
    "aurora_last_backup_recovery_point_created" = {
      "enabled" = true
    },
    "db_instance_backup_enabled" = {
      "enabled" = true
    },
    "rds_instance_public_access_check" = {
      "enabled" = true
    },
    "rds_multi_az_support" = {
      "enabled" = true
    },
    "rds_snapshots_public_prohibited" = {
      "enabled" = true
    },
    "rds_storage_encrypted" = {
      "enabled" = true
    },
  }

  s3 = {
    "s3_bucket_public_read_prohibited" = {
      "enabled" = true
    },
  }

  tag = {
    "required_tags" = {
      "enabled" = true
    },
  }

  vpc = {
    "eip_attached" = {
      "enabled" = true
    },
  }

  tags = {}
}
```
<!-- END_TF_DOCS -->

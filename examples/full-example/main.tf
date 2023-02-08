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

# Context
variable "tags" {
  default     = {}
  description = "A mapping of tags to assign to all resources."
  type        = map(string)
}

# AWS Config Rules
variable "acm" {
  description = "A map of Cloudtrail configuration options."
  type = map(object({
    enabled = bool
  }))
}

variable "cloudtrail" {
  description = "A map of Cloudtrail configuration options."
  type = map(object({
    enabled   = bool
    bucket_id = optional(string)
  }))
}

variable "ec2" {
  description = "A map of EC2 configuration options."
  type = map(object({
    enabled = bool
  }))
}

variable "iam" {
  default     = {}
  description = "A map of IAM configuration options."
  type = map(object({
    enabled = bool
  }))
}

variable "lb" {
  default     = {}
  description = "A map of Load Balancer configuration options."
  type = map(object({
    enabled = bool
  }))
}

variable "rds" {
  default     = {}
  description = "A map of RDS configuration options."
  type = map(object({
    enabled = bool
  }))
}

variable "s3" {
  default     = {}
  description = "A map of S3 configuration options."
  type = map(object({
    enabled = bool
  }))
}

variable "tag" {
  default     = {}
  description = "A map of Tag configuration options."
  type = map(object({
    enabled = bool
  }))
}

variable "vpc" {
  default     = {}
  description = "A map of VPC configuration options."
  type = map(object({
    enabled = bool
  }))
}

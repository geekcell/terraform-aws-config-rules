module "acm" {
  source        = "./modules/rules/acm"
  configuration = var.acm
  tags          = var.tags
}

module "cloudtrail" {
  source        = "./modules/rules/cloudtrail"
  configuration = var.cloudtrail
  tags          = var.tags
}

module "ec2" {
  source        = "./modules/rules/ec2"
  configuration = var.ec2
  tags          = var.tags
}

module "iam" {
  source        = "./modules/rules/iam"
  configuration = var.iam
  tags          = var.tags
}

module "lb" {
  source        = "./modules/rules/lb"
  configuration = var.lb
  tags          = var.tags
}

module "rds" {
  source        = "./modules/rules/rds"
  configuration = var.rds
  tags          = var.tags
}

module "s3" {
  source        = "./modules/rules/s3"
  configuration = var.s3
  tags          = var.tags
}

module "tag" {
  source        = "./modules/rules/tag"
  configuration = var.tag
  tags          = var.tags
}

module "vpc" {
  source        = "./modules/rules/vpc"
  configuration = var.vpc
  tags          = var.tags
}

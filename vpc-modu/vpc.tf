module "vpc" {
  source                = "../vpc-module-developer"
  #Using Terraform module from GitHub
  #source = "git::git-URL?ref=branch-name"
  vpc_cidr              = var.vpc_cidr
  project               = var.project
  environment           = var.environment
  common_tags           = var.common_tags
  public_subnet_cidrs   = var.public_subnet_cidrs
  private_subnet_cidrs  = var.private_subnet_cidrs
  database_subnet_cidrs = var.database_subnet_cidrs
  is_peering_required   = var.is_peering_required
}
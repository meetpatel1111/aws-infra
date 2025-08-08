module "vpc" {
  source      = "./modules/vpc"
  vpc_cidr    = var.vpc_cidr
  environment = var.environment
}

module "eks" {
  source      = "./modules/eks"
  subnet_ids  = var.subnet_ids
  environment = var.environment
}

module "s3" {
  source      = "./modules/s3"
  bucket_name = var.bucket_name
  environment = var.environment
}

module "rds" {
  source                     = "./modules/rds"
  availability_zones         = var.availability_zones
  database_name              = var.database_name
  master_username            = var.master_username
  master_password            = var.master_password
  backup_retention_period    = var.backup_retention_period
  preferred_backup_window    = var.preferred_backup_window
  environment                = var.environment
}
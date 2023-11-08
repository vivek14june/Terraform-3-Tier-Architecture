provider "aws" {
  region = var.region
}

module "vpc" {
  source = "./modules/vpc"
  cidr_block = var.cidr_block
}

module "loadbalancer" {
  source = "./modules/loadbalancer"
  vpc_id = module.vpc.vpc_id
  public_subnet_ids = module.vpc.public_subnet_ids
}

module "webserver" {
  source = "./modules/webserver"
  vpc_id = module.vpc.vpc_id
  private_subnet_ids = module.vpc.private_subnet_ids
  loadbalancer_arn = module.loadbalancer.arn
}

module "appserver" {
  source = "./modules/appserver"
  vpc_id = module.vpc.vpc_id
  private_subnet_ids = module.vpc.private_subnet_ids
}

module "database" {
  source = "./modules/database"
  vpc_id = module.vpc.vpc_id
  private_subnet_ids = module.vpc.private_subnet_ids
}
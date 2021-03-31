provider "aws" {
  # profile = "default"
  region = var.region
}

module "vpc" {
  ## public registry
  # source = "terraform-aws-modules/vpc/aws"
  
  # private registry
  source  = "app.terraform.io/terraexam/vpc/aws"
  version = "1.0.7"


  name = var.name
  cidr = var.cidr

  azs = var.azs

  public_subnets     = var.public_subnets
  public_subnet_tags = var.public_subnet_tags

  private_subnets     = var.private_subnets
  private_subnet_tags = var.private_subnet_tags

  database_subnets     = var.database_subnets
  database_subnet_tags = var.database_subnet_tags

  enable_nat_gateway     = var.enable_nat_gateway
  single_nat_gateway     = var.single_nat_gateway
  one_nat_gateway_per_az = var.one_nat_gateway_per_az

  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = var.tags


  # ADD
  create_database_subnet_route_table = var.create_database_subnet_route_table
  create_database_nat_gateway_route = var.create_database_nat_gateway_route
  create_database_internet_gateway_route = var.create_database_internet_gateway_route
  # create_database_subnet_group = var.create_database_subnet_group

}
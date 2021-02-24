provider "aws" {
  # profile = "default"
  region = var.region //"eu-west-1"
}

# data "aws_security_group" "default" {
#   name   = "default"
#   vpc_id = module.vpc.vpc_id
# }

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  
  name = var.name
  cidr = var.cidr

  azs               = var.azs
  
  public_subnets        = var.public_subnets
  public_subnet_tags    = var.public_subnet_tags
  
  private_subnets       = var.private_subnets
  private_subnet_tags   = var.private_subnet_tags
  
  public_subnets        = var.database_subnets
  public_subnet_tags    = var.database_subnet_tags

  enable_nat_gateway    = var.enable_nat_gateway
  single_nat_gateway    = var.single_nat_gateway
  one_nat_gateway_per_az    = var.one_nat_gateway_per_az

  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = var.tags

}
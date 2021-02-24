###############################################################################################################################################################################
# Terraform loads variables in the following order, with later sources taking precedence over earlier ones:
# 
# Environment variables
# The terraform.tfvars file, if present.
# The terraform.tfvars.json file, if present.
# Any *.auto.tfvars or *.auto.tfvars.json files, processed in lexical order of their filenames.
# Any -var and -var-file options on the command line, in the order they are provided. (This includes variables set by a Terraform Cloud workspace.)
###############################################################################################################################################################################
#
# terraform cloud 와 별도로 동작
# terraform cloud 의 variables 와 동등 레벨
#
# Usage :
#
#   terraform apply -var-file=terraform.tfvars
#


region = "eu-west-1"

name = "example-vpc"
cidr            = "10.0.0.0/16"

azs    = ["us-west-1a", "us-west-1c"]

public_subnets        = ["10.0.1.0/24", "10.0.2.0/24"]
public_subnet_tags    = {
  Tier = "public"
}

private_subnets       = ["10.0.11.0/24", "10.0.12.0/24"]
private_subnet_tags   = {
  Tier = "private"
}

database_subnets        = ["10.0.101.0/24", "10.0.102.0/24"]
database_subnet_tags    = {
  Tier = "db"
}

enable_nat_gateway    = true
single_nat_gateway    = true
one_nat_gateway_per_az  = false

tags = {
 Terraform   = "true"
 Environment = "dev"
}

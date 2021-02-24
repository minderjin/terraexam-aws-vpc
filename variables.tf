variable "name" {}

variable "region" {}
variable "azs" {}
variable "cidr" {}

variable "private_subnets" {}
variable "private_subnet_tags" {}

variable "public_subnets" {}
variable "public_subnet_tags" {}

variable "database_subnets" {}
variable "database_subnet_tags" {}

variable "enable_nat_gateway" {}
variable "single_nat_gateway" {}
variable "one_nat_gateway_per_az" {}

variable "tag" {}

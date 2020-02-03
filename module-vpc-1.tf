provider "aws" {
  region = "us-east-1"
}


module "vpc-1" {
  source = "git::https://github.com/hakten/module-vpc.git"

cidr            = "10.0.0.0/16"

project         = "Wordpress"
environment     = "Test"

azs             = ["us-east-1a","us-east-1b","us-east-1c"]
public-subnets  = ["10.0.1.0/24","10.0.2.0/24","10.0.3.0/24"]
private-subnets = []
}

output "vpc-id-1" {
  value = "${module.vpc.vpc-id}"
}

output "vpc-cidr-1" {
  value = "${module.vpc.vpc-cidr}"
}

output "public-subnets-1" {
  value = "${module.vpc.public-subnets}"
}

output "private-subnets-1" {
  value = "${module.vpc.private-subnets}"
}
//module "vpc" {
//  source  = "terraform-aws-modules/vpc/aws"
//  version = "2.21.0"
//
//  name = var.vpc_name
//  cidr = var.vpc_cidr
//  azs = var.vpc_azs
//  private_subnets = var.vpc_private_subnets
//  public_subnets = var.vpc_public_subnets
//  enable_nat_gateway = var.vpc_enable_nat_gateway
//
//}
//


resource "aws_vpc" "Custome" {
  cidr_block = "10.10.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name = "Custom"
  }
}



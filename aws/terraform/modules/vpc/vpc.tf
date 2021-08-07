resource "aws_eip" "nat" {
  count = var.eip_count
  vpc   = true
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "3.2.0"

  name = var.name
  cidr = var.cidr
  azs             = var.azs
  
  public_subnets  = var.public_subnets
  private_subnets  = var.private_subnets
  database_subnets = var.database_subnets

  enable_nat_gateway = var.enable_nat_gateway 
  single_nat_gateway = var.single_nat_gateway 
  enable_vpn_gateway = var.enable_vpn_gateway
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support   = var.enable_dns_support

  tags = {
    Terraform = "true"
    Environment = var.environment
  }
}
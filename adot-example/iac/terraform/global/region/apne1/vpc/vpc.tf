locals {
  vpc_name         = "${var.region_code}-vpc"
  private_subnets  = ["10.0.0.0/24", "10.0.1.0/24", "10.0.2.0/24"]
  public_subnets   = ["10.0.10.0/24", "10.0.11.0/24", "10.0.12.0/24"]
  database_subnets = ["10.0.100.0/24", "10.0.101.0/24", "10.0.102.0/24"]
}

resource "aws_eip" "nat_ip" {
  count = 3

  vpc = true
}


module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = local.vpc_name
  cidr = var.vpc_ip_range["${var.region_code}"]
  azs = [
    "ap-northeast-1a",
    "ap-northeast-1c",
    "ap-northeast-1d"
  ]

  private_subnets  = local.private_subnets
  public_subnets   = local.public_subnets
  database_subnets = local.database_subnets

  enable_nat_gateway     = true
  single_nat_gateway     = false
  one_nat_gateway_per_az = true
  reuse_nat_ips          = true
  external_nat_ip_ids    = aws_eip.nat_ip.*.id
  enable_classiclink     = false

  tags = {
    "terraform"   = "true"
    "create_date" = "2022-08-31"
  }

}
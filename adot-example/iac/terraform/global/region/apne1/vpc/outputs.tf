output "vpc_id" {
  value = module.vpc.vpc_id
}

output "subnets" {
  value = {
    private_subnets = module.vpc.private_subnets
    public_subnets  = module.vpc.public_subnets

  } #list of IDs of private subnets
}

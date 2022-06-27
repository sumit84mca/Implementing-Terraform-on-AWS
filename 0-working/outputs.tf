output "vpc_id" {
  value = module.vpc.vpc_id
}

output "db_subnet_group" {
  value = module.vpc.database_subnet_group
}

output "public_subnets" {
  value = module.vpc.public_subnets
}

output "private_subnets" {
  value = module.vpc.private_subnets
}

output "availability_zones" {
  value = module.vpc.azs
}

output "internet_gateway" {
  value = module.vpc.igw_id
}


output "vpc" {
  value = module.vpc
}


module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 3.0"

  name                 = "${var.project_name}-vpc"
  cidr                 = var.vpc_cidr_range
  enable_dns_hostnames = true

  azs             = slice(data.aws_availability_zones.azs.names, 0, 2)
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets

  default_route_table_routes = [{
    cidr_block = "0.0.0.0/0"
    },
    {
      ipv6_cidr_block        = "::0/0"
  }]
  

  tags = local.common_tags
}

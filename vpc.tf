resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"
  enable_dns_hostnames = true
  tags = merge(
    locals.common_tags,
    {
        Name = locals.common_name_suffix
    }
  )
}
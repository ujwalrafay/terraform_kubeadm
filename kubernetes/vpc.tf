resource "aws_vpc" "uj-managed-vpc-terraform" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  instance_tenancy     = "default"
  tags = {
    Name = "uj-managed-vpc-terraform"
  }
}
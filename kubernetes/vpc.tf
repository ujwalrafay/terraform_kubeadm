resource "aws_vpc" "uj-managed-vpc-terraform" {
  cidr_block                       = "10.0.0.0/16"
  enable_dns_hostnames             = true
  enable_dns_support               = true
  instance_tenancy = "default"
  tags = {
    Name = "uj-managed-vpc-terraform"
  }
}

resource "aws_vpc_dhcp_options" "dhcpos" {
   vpc_id                  = aws_vpc.prod-vpc.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = "true" //it makes this a public subnet
  availability_zone       = "us-west-2a"
  tags = {
    Name = "prod-subnet-public-1"
  }
}
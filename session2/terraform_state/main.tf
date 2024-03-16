data "aws_availability_zones" "available" {}

resource "aws_vpc" "sample_vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true # Internal domain name
  enable_dns_hostnames = true # Internal host name

  tags = {
    Name = "sample-vpc"
  }
}

resource "aws_subnet" "sample_private_subnet" {

  # creating a count so we can dynamically create IP address
  count = 1

  availability_zone = data.aws_availability_zones.available.names[count.index]
  cidr_block        = "10.0.${count.index}.0/24"
  vpc_id            = aws_vpc.sample_vpc.id

  tags = {
    Name = "sample-private-subnet"
  }
}
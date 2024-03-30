resource "aws_vpc" "sample_vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true # Internal domain name
  enable_dns_hostnames = true # Internal host name

  tags = {
    Name = "VPC"
    Terraform = "True"
  }
}

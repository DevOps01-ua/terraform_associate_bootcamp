resource "aws_subnet" "dev_subnet" {
  vpc_id            = data.aws_vpc.dev_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "dev-subnet"
  }
}
data "aws_vpc" "dev_vpc" {
  filter {
    name   = "tag:name"
    values = ["dev-vpc"]
  }
}
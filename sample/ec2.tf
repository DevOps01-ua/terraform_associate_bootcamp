resource "aws_vpc" "my_vpc" {
  cidr_block = "172.16.0.0/16"

  tags = {
    Name = "tf-example"
  }
}

resource "aws_subnet" "my_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "172.16.10.0/24"
  availability_zone = "us-west-2a"

  tags = {
    Name = "tf-example"
  }
}

#resource "aws_s3_bucket" "sample_s3_bucket" {
#  bucket = "${var.bucket_name}-${local.test_local}"
#
#}
#
#resource "aws_s3_bucket_versioning" "versioning_example" {
#  bucket = aws_s3_bucket.sample_s3_bucket.id
#  versioning_configuration {
#    status = "Enabled"
#  }
#}


resource "aws_network_interface" "foo" {
  subnet_id   = aws_subnet.my_subnet.id
  private_ips = ["172.16.10.100"]

  tags = {
    Name = "primary_network_interface"
  }
}

resource "aws_instance" "foo" {
  count = 2
  ami           = "ami-005e54dee72cc1d00" # us-west-2
  instance_type = "t2.micro"

  network_interface {
    network_interface_id = aws_network_interface.foo.id
    device_index         = 0
  }

  credit_specification {
    cpu_credits = "unlimited"
  }
  provider = "aws.frankfurt"

}


resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
  tags          = var.tags

}

resource "aws_instance" "example2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  tags          = local.common_tags

}


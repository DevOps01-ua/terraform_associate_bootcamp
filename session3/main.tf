resource "aws_vpc" "sample_vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true # Internal domain name
  enable_dns_hostnames = true # Internal host name

  tags = {
    Name = "VPC"
    Terraform = "True"
  }
}


module "devops01" {
  source  = "app.terraform.io/terraform_associate_course_devops01/devops01/aws"
  version = "0.2.0-alpha"
  instance_name = "test-instance"
  ami = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"

}
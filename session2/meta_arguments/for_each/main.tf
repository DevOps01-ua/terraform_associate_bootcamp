variable "instance_tags" {
  type = map(string)
  default = {
    "us-east-1" = "East Instance"
    "us-west-2" = "West Instance"
  }
}

resource "aws_instance" "example" {
  for_each      = var.instance_tags
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  tags = {
    Name = each.value
  }
}

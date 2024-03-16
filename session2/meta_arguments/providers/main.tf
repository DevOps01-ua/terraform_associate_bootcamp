# Define two provider configurations for AWS.
provider "aws" {
  alias  = "west"
  region = "us-west-2"
}

provider "aws" {
  alias  = "east"
  region = "us-east-1"
}

# Use the western AWS provider to create a resource.
resource "aws_instance" "west_instance" {
  provider = aws.west
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
}

# Use the eastern AWS provider to create a resource.
resource "aws_instance" "east_instance" {
  provider = aws.east
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
}

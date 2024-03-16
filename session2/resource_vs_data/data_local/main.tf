data "local_file" "init_script" {
  filename = "${path.module}/setup-script.sh"
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  user_data     = data.local_file.init_script.content
}

data "template_file" "init" {
  template = file("${path.module}/policy.tpl")

  vars = {
    service = "ec2.amazonaws.com"
  }
}

resource "aws_iam_policy" "example" {
  name   = "example_policy"
  policy = data.template_file.init.rendered
}

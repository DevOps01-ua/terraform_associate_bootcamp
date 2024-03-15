data "aws_iam_policy_document" "example_policy" {
  statement {
    actions = ["ec2:Describe*"]
    resources = ["*"]
    effect = "Allow"
  }
}

resource "aws_iam_role" "example_role" {
  name = "example_role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
        Effect = "Allow"
        Sid = ""
      },
    ]
  })

  policy = data.aws_iam_policy_document.example_policy.json
}

output "role_arn" {
  value = aws_iam_role.example_role.arn
}

variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "account_id" {
  description = "AWS account ID"
}

variable "table_name" {
  description = "DynamoDB table name"
  default     = "myTable"
}

data "template_file" "example_policy" {
  template = file("${path.module}/policy.tpl")

  vars = {
    region     = var.region
    account_id = var.account_id
    table_name = var.table_name
  }
}

output "rendered_policy" {
  value = data.template_file.example_policy.rendered
}

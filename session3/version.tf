terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  cloud {
    organization = "terraform_associate_course_devops01"

    workspaces {
      name = "test-cli-workspace"
    }
  }

  required_version = ">= 1.5.0"
}

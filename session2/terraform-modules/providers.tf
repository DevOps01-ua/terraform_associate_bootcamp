terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  access_key = "AKIA3FLDYZYCXVKS2DHQ"
  secret_key = "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"
  region = "us-east-2"
}

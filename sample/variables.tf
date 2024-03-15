variable "region" {
  description = "The AWS region to create resources in"
  type        = string
  default     = "us-west-2"
}

variable "instance_type" {
  description = "The type of instance to start"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "The ID of the AMI to use for the server"
  type        = string
  // No default is provided, this must be specified
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {
    Terraform   = "true"
    Environment = "dev"
  }
}

variable "environment" {
  default = "dev"
  nullable = false
}

variable "bucket_name" {
  description = "The AWS region to create resources in"
  type        = string
  sensitive   = false
}
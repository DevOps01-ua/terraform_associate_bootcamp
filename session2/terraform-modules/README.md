# Terraform Modules Example

This repository contains a set of Terraform modules for creating AWS resources. These modules are designed to be reusable components for managing infrastructure as code.

## Overview

- **Modules**: Reusable Terraform configurations for creating specific AWS resources.
- **Usage**: Example usage of modules in `main.tf` to create a full infrastructure setup.

## Modules

### EC2 Instance Module

- **Path**: [modules/ec2_instance/](./modules/ec2_instance/)
- **Purpose**: Creates an AWS EC2 instance with specified AMI, instance type, and name.
- **Components**:
  - [main.tf](./modules/ec2_instance/main.tf) - Resource definition for the EC2 instance.
  - [variables.tf](./modules/ec2_instance/variables.tf) - Variable definitions for the module.
  - [outputs.tf](./modules/ec2_instance/outputs.tf) - Outputs of the module.

### S3 Bucket Module

- **Path**: [modules/s3_bucket/](./modules/s3_bucket/)
- **Purpose**: Creates an AWS S3 bucket with versioning enabled.
- **Components**:
  - [main.tf](./modules/s3_bucket/main.tf) - Resource definition for the S3 bucket.
  - [variables.tf](./modules/s3_bucket/variables.tf) - Variable definitions for the module.
  - [outputs.tf](./modules/s3_bucket/outputs.tf) - Outputs of the module.

## Usage

To use these modules in your Terraform configuration, reference them in your `main.tf` file with the appropriate parameters. Here is an example of how to use both the EC2 and S3 bucket modules:

```hcl
module "ec2_instance" {
  source        = "./modules/ec2_instance"
  ami           = "ami-123456"
  instance_type = "t2.micro"
  instance_name = "MyInstance"
}

module "s3_bucket" {
  source      = "./modules/s3_bucket"
  bucket_name = "my-unique-bucket-name"
}
```

Ensure you replace the placeholder values with actual data relevant to your AWS environment.

## Best Practices

When working with these modules, consider the following best practices:
- **Variable Customization**: Customize module variables as per your requirements.
- **State Management**: Use remote state backends like AWS S3 with state locking for collaboration.
- **Version Control**: Version your Terraform configurations and modules for better change management.

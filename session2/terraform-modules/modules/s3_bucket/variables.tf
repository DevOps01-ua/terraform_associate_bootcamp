variable "bucket_name" {
  description = "The name of the bucket"
  default     = "my-unique-bucket-name" // Provide a default value or ensure to pass this variable during runtime
}

variable "bucket_name_suffix" {
  description = "Suffix to ensure bucket name uniqueness"
  default     = "001" // Change this as needed to avoid name conflicts
}

resource "aws_s3_bucket" "example" {
  // Concatenates the provided bucket name with a unique suffix
  bucket = "${var.bucket_name}-${var.bucket_name_suffix}"
}

resource "aws_s3_bucket_versioning" "example" {
  bucket = aws_s3_bucket.example.id

  versioning_configuration {
    status = "Enabled"
  }
}

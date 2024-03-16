resource "aws_s3_bucket" "example" {
  bucket = "terraform-example-bucket"
}

resource "aws_s3_bucket_object" "example" {
  depends_on = [aws_s3_bucket.example]
  bucket     = aws_s3_bucket.example.bucket
  key        = "example_file"
  content    = "Hello World!"
}

resource "aws_s3_bucket" "example" {
  bucket = "terraform-lifecycle-example-bucket"
  
  lifecycle {
    prevent_destroy = true
    create_before_destroy = true
  }
}

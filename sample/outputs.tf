output "instance_id" {
  value = aws_instance.example.id
  description = "The ID of the EC2 instance"
}

output "instance_public_ip" {
  value = aws_instance.example.public_ip
  description = "The public IP address of the EC2 instance"
}


#output "bucket_name" {
#  value = aws_s3_bucket.sample_s3_bucket.bucket_domain_name
#}
module "ec2_instance" {
  source        = "./modules/ec2_instance"
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  instance_name = "MyInstance"
}

module "s3_bucket" {
  source      = "./modules/s3_bucket"
  bucket_name = "my-unique-bucket-name"
}

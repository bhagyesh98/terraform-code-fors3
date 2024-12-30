provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-bucket-name-12345"
  acl    = "private"

  versioning {
    enabled = true
  }

  tags = {
    Name        = "My-S3-Bucket"
    Environment = "Dev"
  }
}

output "bucket_name" {
  value = aws_s3_bucket.my_bucket.id
}

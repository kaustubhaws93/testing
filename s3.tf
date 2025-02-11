resource "aws_s3_bucket" "example" {
  bucket = "my-unique-bucket-name" # Change this to a globally unique name
}

resource "aws_s3_bucket_versioning" "example" {
  bucket = aws_s3_bucket.example.id
  versioning_configuration {
    status = "Enabled"
  }
}
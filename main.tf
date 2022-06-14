# Configure the AWS Provider
provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAZMMPCYTYYXQKHD7N"
  secret_key = "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"
}

resource "aws_s3_bucket" "1234bucketanju" {
  bucket = "1234bucketanju"
  tags = {
    Name        = "Mys3buckets"
    Environment = "Testcase"
  }
}
resource "aws_s3_bucket_public_access_block" "1234bucketanju" {
  bucket = aws_s3_bucket.1234bucketanju.id
  block_public_acls   = true

}


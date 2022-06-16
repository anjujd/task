# Configure the AWS Provider
provider "aws" {
  region     = "us-west-2"
 }

resource "aws_s3_bucket" "c1234bucketanju" {
  bucket = "c1234bucketanju"
  tags = {
    Name        = "Mys3buckets"
    Environment = "Testcase"
  }
}
resource "aws_s3_bucket_public_access_block" "c1234bucketanju" {
  bucket = aws_s3_bucket.c1234bucketanju.id
  block_public_acls   = true

}


# Configure the AWS Provider
provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAZMMPCYTYYXQKHD7N"
  secret_key = "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"
}

resource "aws_s3_bucket" "buckets31" {
  bucket = "buckets31"
  tags = {
    Name        = "My s3bucketsent"
    Environment = "Trial"
  }
}
resource "aws_s3_bucket_public_access_block" "buckets31" {
  bucket = aws_s3_bucket.buckets31.id
  block_public_acls   = true

}


# Configure the AWS Provider
provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAZMMPCYTYYSL2GC4F"
  secret_key = "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"
}

resource "aws_s3_bucket" "anjusentinels3" {
  bucket = "anjusentinels3"
  tags = {
    Name        = "My s3bucketsent"
    Environment = "Trial"
  }
}
resource "aws_s3_bucket_public_access_block" "anjusentinels3" {
  bucket = aws_s3_bucket.anjusentinels3.id
  block_public_acls   = true

}

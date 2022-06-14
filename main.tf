# Configure the AWS Provider
provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAZMMPCYTYYXQKHD7N"
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

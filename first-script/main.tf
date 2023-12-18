provider "aws" {
    region = "us-east-1"
    profile = "tf014"
}

resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "my-tf-test-bucket-83764513410113"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Manageby = "Terraform"
  }
}
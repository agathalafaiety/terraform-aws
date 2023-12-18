terraform {
  required_version = "1.6.6"

  required_providers {
    aws = {
      source  = "haschicorp/aws"
      version = "5.31.0"
    }
  }
}

provider "aws" {
  region  = "sa-east-1"
  profile = "tf014"
}

resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "my-tf-test-bucket-alsv83764513410113"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    ManageBy    = "Terraform"
    Owner       = "Agatha Lafaiety"
    UpdatedAAt  = "2023-12-18"
  }
}

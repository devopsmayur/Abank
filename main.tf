terraform {
  required_providers {
    tfe = {
      version = "~> 0.44.0"
    }
  }
}

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-west-2"
}

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucketmayur"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.b.id
  acl    = "private"
}


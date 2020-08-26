provider "aws" {
  version = "~> 3.0"
  region  = "us-east-1"
}

terraform {
  backend "s3" {
    bucket         = "tfstate-automation"
    key            = "VPC/remote.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform"
  }
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

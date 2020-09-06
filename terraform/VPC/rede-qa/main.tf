provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket         = "tfstate-automation"
    key            = "VPC/remote.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform"
  }
}

module "vpc" {
  source = "../modules/vpc/"
  cidr_block = "10.0.0.0/16"
}

module "subnet" {
  source = "../modules/subnet/"
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"

}
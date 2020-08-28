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

module "vpc_app" {
  source = "./modules/vpc/"

}

provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket         = "terraform-state-project-cluster-monitorado"
    key            = "qa/vpc-terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "vpc_terraform_qa"
  }
}
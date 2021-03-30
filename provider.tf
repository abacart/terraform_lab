terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  backend "remote" {
    workspaces { name = "lab" }
    hostname     = "app.terraform.io"
    organization = "abacart"
  }
}


# Configure the AWS Provider
provider "aws" {
  region = "eu-west-3"
}

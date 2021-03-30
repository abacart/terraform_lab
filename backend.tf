/*
terraform {
  backend "s3" {
    bucket         = "bacart.terraform.backend"
    key            = "lab/remote.tfstate"
    region         = "eu-west-3"
    dynamodb_table = "terraform-s3-state-lock"
  }
}
*/

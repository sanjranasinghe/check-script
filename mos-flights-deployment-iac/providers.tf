terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
   backend "s3" {
    bucket = "terraform-cmb"
    key    = "flight-api/terraform.tfstate"
    region = "ap-southeast-1"
  }

}

provider "aws" {
  region = "eu-west-2"
  shared_credentials_file = "$HOME/.aws/credentials"
  profile = "default"
}

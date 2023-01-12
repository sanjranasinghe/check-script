terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      shared_credentials_file = "/root/.aws/credentials"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "eu-west-2"
}

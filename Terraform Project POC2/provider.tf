provider "aws" {
  profile                 = "terraform"
  shared_credentials_file = "~/ .aws/credentials"
  region                  = "us-east-1"

}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.21"
    }
  }
}
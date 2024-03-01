terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.33.0"
    }
  }
  backend "s3" {
    bucket = "daws14-remotestate"
    key    = "vpc-test"
    region = "us-east-1"
    dynamodb_table = "daws14-locking"
  }
}

provider "aws" {

    region = "us-east-1"
    # Configuration options
}
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.21.0"
    }
  }
}

provider "aws" {
  # Configuration options
  access_key = "AKIAUZD7U647DNKCESWG"
secret_key = "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"
region = "us-east-2"
}
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.14.0"
    }
  }
}

provider "aws" {
  # Configuration options
}

resource "aws_neptune_cluster" "default" {
  engine                              = "neptune"
  skip_final_snapshot                 = true
  iam_database_authentication_enabled = true
  apply_immediately                   = true
}
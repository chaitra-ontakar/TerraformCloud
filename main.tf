terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.12.0"
    }
  }
}

provider "aws" {
  # Configuration options
  access_key = "AKIAUZD7U647F65SM7RY"
secret_key = "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"
region = "us-east-2"

}

resource "aws_lb" "test" {
  name               = "test-lb-tf"
  internal           = false
  load_balancer_type = "application"
   
  enable_deletion_protection = true
}

resource "aws_lb" "test1" {
  name               = "test-lb-tf"
  internal           = false
  load_balancer_type = "network"

  enable_deletion_protection = true
}
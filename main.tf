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
  }

resource "aws_lb" "test" {
  name               = "test-lb-tf"
  internal           = false
  
   
  enable_deletion_protection = true
}

resource "aws_lb" "test1" {
  name               = "test-lb-tf"
  internal           = false
  

  enable_deletion_protection = true
}
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "day19_ec2" {
  ami           = "ami-0f58b397bc5c1f2e8"
  instance_type = "t3.micro"
  key_name      = "ClubHubkey"

  tags = {
    Name = "yash30"
  }
}

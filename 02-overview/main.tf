terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0fa377108253bf620" # Ubuntu 22.04 LTS // ap-southeast-1
  instance_type = "t2.micro"
}

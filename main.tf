terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      #version = "~> 3.27"
    }
  }

  required_version = ">= 1.1.0"
}

provider "aws" {
  region  = "us-west-2"
  shared_credentials_files  = "$HOME/.aws/credentials"
  profile                   = "default"
}

# aws EC2 instance creation
resource "aws_instance" "tf_gen_server" {
  ami           = "ami-08e637cea2f053dfa"
  instance_type = "t2.micro"

  tags = {
    Name = "TfGeneratedEc2instance"
  }
}
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.30.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "demo-server" {
  ami = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro"
  key_name = "dpp"
}
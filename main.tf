provider "aws" {
    region = "us-west-1"
}

terraform {
  backend "s3" {
    bucket = "my-1stbucket-terraform"
    key    = "terraform.tfstate"
    region = "us-west-1"
    dynamodb_table = "terraformtier1"
  }
}

resource "aws_instance" "web" {
  ami           = "ami-0d2986f2e8c0f7d01"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}

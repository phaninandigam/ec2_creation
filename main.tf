resource "aws_instance" "ourfirst" {
  ami           = "ami-00bb6a80f01f03502"
  instance_type = "t2.micro"
}

provider "aws" {
  region     = "ap-south-1"
}